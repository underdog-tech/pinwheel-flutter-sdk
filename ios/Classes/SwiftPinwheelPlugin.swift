import Flutter
import PinwheelSDK
import UIKit

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
    private var _useDarkMode: Bool?
    private var _useSecureOrigin: Bool?
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
            _channel = FlutterMethodChannel(
                name: "pinwheel", binaryMessenger: messenger,
                codec: FlutterJSONMethodCodec.sharedInstance())
        }

        super.init()
        if let dict = args as? NSDictionary,
            let token = dict["token"] as? String
        {
            _token = token
        }
        if let dict = args as? NSDictionary,
            let useDarkMode = dict["useDarkMode"] as? Bool
        {
            _useDarkMode = useDarkMode
        }
        if let dict = args as? NSDictionary,
            let useSecureOrigin = dict["useSecureOrigin"] as? Bool
        {
            _useSecureOrigin = useSecureOrigin
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
        var config = PinwheelConfig(
            mode: .sandbox, environment: .production, sdk: "flutter", version: "4.0.0")
        config.useSecureOrigin = _useSecureOrigin ?? false
        let useDarkMode = _useDarkMode ?? false
        _pinwheelVC = PinwheelViewController(
            token: token, delegate: self, config: config, useDarkMode: useDarkMode)
        if let view = _pinwheelVC?.view {
            view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            _view.addSubview(view)
        }
    }
}

extension FLNativeView: PinwheelDelegate {

    public func onEvent(name: PinwheelEventType, event: PinwheelEventPayload?) {
        let eventString = self.encodePayload(event)
        let obj = PinwheelEventChannelArgument(name: name.rawValue, payload: eventString)
        let jsonData = try! JSONEncoder().encode(obj)
        let argument = String(data: jsonData, encoding: .utf8)!
        _channel?.invokeMethod("onEvent", arguments: argument)
    }

    public func onExit(_ error: PinwheelError?) {
        var payload: String?
        if let jsonData = try? JSONEncoder().encode(error),
            let jsonString = String(data: jsonData, encoding: .utf8)
        {

            payload = jsonString
        }
        _channel?.invokeMethod("onExit", arguments: payload)
    }

    public func onError(_ error: PinwheelError) {
        var payload: String?
        if let jsonData = try? JSONEncoder().encode(error),
            let jsonString = String(data: jsonData, encoding: .utf8)
        {

            payload = jsonString
        }
        _channel?.invokeMethod("onError", arguments: payload)
    }

    public func onSuccess(_ result: PinwheelSuccessPayload) {
        var payload: String?
        if let jsonData = try? JSONEncoder().encode(result),
            let jsonString = String(data: jsonData, encoding: .utf8)
        {

            payload = jsonString
        }
        _channel?.invokeMethod("onSuccess", arguments: payload)
    }

    public func onLogin(_ result: PinwheelLoginPayload) {
        var payload: String?
        if let jsonData = try? JSONEncoder().encode(result),
            let jsonString = String(data: jsonData, encoding: .utf8)
        {

            payload = jsonString
        }
        _channel?.invokeMethod("onLogin", arguments: payload)
    }

    public func onLoginAttempt(_ result: PinwheelLoginAttemptPayload) {
        var payload: String?
        if let jsonData = try? JSONEncoder().encode(result),
            let jsonString = String(data: jsonData, encoding: .utf8)
        {

            payload = jsonString
        }
        _channel?.invokeMethod("onLoginAttempt", arguments: payload)
    }

    private func encodePayload(_ payload: PinwheelEventPayload?) -> String? {
        guard let payload else { return nil }
        return try? payload.jsonString()
    }
}
