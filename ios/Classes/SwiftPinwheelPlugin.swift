import Flutter
import UIKit
import PinwheelSDK

public struct PinwheelEventChannelArgument: Codable {
    public let name: String
    public var payload: String?
}

public class SwiftPinwheelPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "pinwheel", binaryMessenger: registrar.messenger())
    let instance = SwiftPinwheelPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)


    let factory = FLNativeViewFactory(messenger: registrar.messenger())
    registrar.register(
        factory,
        withId: "pinwheel-link-view")
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {

  }
}

class FLNativeViewFactory: NSObject, FlutterPlatformViewFactory {
    private var messenger: FlutterBinaryMessenger

    init(messenger: FlutterBinaryMessenger) {
        self.messenger = messenger
        super.init()
    }

    func create(
        withFrame frame: CGRect,
        viewIdentifier viewId: Int64,
        arguments args: Any?
    ) -> FlutterPlatformView {

        return FLNativeView(
            frame: frame,
            viewIdentifier: viewId,
            arguments: args,
            binaryMessenger: messenger)
    }
    
    func createArgsCodec() -> FlutterMessageCodec & NSObjectProtocol {
        return FlutterJSONMessageCodec.sharedInstance()
    }
}

class FLNativeView: NSObject, FlutterPlatformView {
    private var _view: UIView
    private var _token: String?
    private var _pinwheelVC: PinwheelViewController?
    private var _channel: FlutterMethodChannel?

    init(
        frame: CGRect,
        viewIdentifier viewId: Int64,
        arguments args: Any?,
        binaryMessenger messenger: FlutterBinaryMessenger?
    ) {
        _view = UIView()
        if let messenger = messenger {
            _channel = FlutterMethodChannel(name: "pinwheel", binaryMessenger: messenger, codec: FlutterJSONMethodCodec.sharedInstance())
        }
        
        super.init()
        if let dict = args as? NSDictionary,
           let token = dict["token"] as? String {
            _token = token
        }
        createNativeView(view: _view)
    }

    func view() -> UIView {
        return _view
    }

    func createNativeView(view _view: UIView) {
        guard let token = _token else { return }
        if let view = _pinwheelVC?.view {
            view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            _view.addSubview(view)
            return
        }
        let config = PinwheelConfig(mode: .sandbox, environment: .production, sdk: "flutter", version: "2.4.0")
        _pinwheelVC = PinwheelViewController(token: token, delegate: self, config: config)
        if let view = _pinwheelVC?.view {
            view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            _view.addSubview(view)
        }
    }
}

extension FLNativeView: PinwheelDelegate {
    
    public func onEvent(name: PinwheelEventType, event: PinwheelEventPayload?) {
        var eventString: String?
        var argument: String?
        switch name {
        case .open:
            // no payload
            break
        case .selectEmployer:
            if let event = event as? PinwheelSelectedEmployerPayload {
                let eventData = try! JSONEncoder().encode(event)
                eventString = String(data: eventData, encoding: .utf8)!
            }
        case .selectPlatform:
            if let event = event as? PinwheelSelectedPlatformPayload {
                let eventData = try! JSONEncoder().encode(event)
                eventString = String(data: eventData, encoding: .utf8)!
            }
        case .incorrectPlatformGiven:
            break
        case .login:
            if let event = event as? PinwheelLoginPayload {
                let eventData = try! JSONEncoder().encode(event)
                eventString = String(data: eventData, encoding: .utf8)!
            }
        case .loginAttempt:
            if let event = event as? PinwheelLoginAttemptPayload {
                let eventData = try! JSONEncoder().encode(event)
                eventString = String(data: eventData, encoding: .utf8)!
            }
        case .inputAmount:
            if let event = event as? PinwheelAmountPayload {
                let eventData = try! JSONEncoder().encode(event)
                eventString = String(data: eventData, encoding: .utf8)!
            }
        case .inputAllocation:
            if let event = event as? PinwheelInputAllocationPayload {
                let eventData = try! JSONEncoder().encode(event)
                eventString = String(data: eventData, encoding: .utf8)!
            }
        case .inputRequired:
            // no payload
            break
        case .exit:
            if let event = event as? PinwheelExitPayload {
                let eventData = try! JSONEncoder().encode(event)
                eventString = String(data: eventData, encoding: .utf8)!
            }
        case .success:
            if let event = event as? PinwheelSuccessPayload {
                let eventData = try! JSONEncoder().encode(event)
                eventString = String(data: eventData, encoding: .utf8)!
            }
        case .error:
            if let event = event as? PinwheelError {
                let eventData = try! JSONEncoder().encode(event)
                eventString = String(data: eventData, encoding: .utf8)!
            }
        case .screenTransition:
            if let event = event as? PinwheelScreenTransitionPayload {
                let eventData = try! JSONEncoder().encode(event)
                eventString = String(data: eventData, encoding: .utf8)!
            }
        case .cardSwitchBegin:
            // no payload
            break
        case .ddFormBegin:
            // no payload
            break
        case .ddFormCreate:
            if let event = event as? PinwheelDDFormCreatePayload {
                let eventData = try! JSONEncoder().encode(event)
                eventString = String(data: eventData, encoding: .utf8)!
            }
        case .ddFormDownload:
            // no payload
            break
        }
        
        let obj = PinwheelEventChannelArgument(name: name.rawValue, payload: eventString)
        let jsonData = try! JSONEncoder().encode(obj)
        argument = String(data: jsonData, encoding: .utf8)!
        _channel?.invokeMethod("onEvent", arguments: argument)
    }
    
    public func onExit(_ error: PinwheelError?) {
        var payload: String?
        if let jsonData = try? JSONEncoder().encode(error),
            let jsonString = String(data: jsonData, encoding: .utf8) {
            
                payload = jsonString
        }
        _channel?.invokeMethod("onExit", arguments: payload)
    }
    
    public func onError(_ error: PinwheelError) {
        var payload: String?
        if let jsonData = try? JSONEncoder().encode(error),
            let jsonString = String(data: jsonData, encoding: .utf8) {
            
                payload = jsonString
        }
        _channel?.invokeMethod("onError", arguments: payload)
    }
    
    public func onSuccess(_ result: PinwheelSuccessPayload) {
        var payload: String?
        if let jsonData = try? JSONEncoder().encode(result),
            let jsonString = String(data: jsonData, encoding: .utf8) {
            
                payload = jsonString
        }
        _channel?.invokeMethod("onSuccess", arguments: payload)
    }
    
    public func onLogin(_ result: PinwheelLoginPayload) {
        var payload: String?
        if let jsonData = try? JSONEncoder().encode(result),
            let jsonString = String(data: jsonData, encoding: .utf8) {
            
                payload = jsonString
        }
        _channel?.invokeMethod("onLogin", arguments: payload)
    }
    
    public func onLoginAttempt(_ result: PinwheelLoginAttemptPayload) {
        var payload: String?
        if let jsonData = try? JSONEncoder().encode(result),
            let jsonString = String(data: jsonData, encoding: .utf8) {
            
                payload = jsonString
        }
        _channel?.invokeMethod("onLoginAttempt", arguments: payload)
    }
}
