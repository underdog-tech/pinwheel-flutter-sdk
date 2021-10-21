import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'models.dart';
import 'serializers.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';

typedef PinwheelExitCallback = void Function(PinwheelExitPayload? payload);
typedef PinwheelErrorCallback = void Function(PinwheelError error);
typedef PinwheelEventCallback = void Function(String name, PinwheelEventPayload? payload);
typedef PinwheelSuccessCallback = void Function(PinwheelSuccessPayload payload);
typedef PinwheelLoginCallback = void Function(PinwheelLoginPayload payload);
typedef PinwheelLoginAttemptCallback = void Function(PinwheelLoginAttemptPayload payload);

class Pinwheel {
  static const MethodChannel _channel =
      const MethodChannel('pinwheel', JSONMethodCodec());

    static final _standardSerializers =
      (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

  PinwheelErrorCallback? _onError;
  PinwheelExitCallback? _onExit;
  PinwheelEventCallback? _onEvent;
  PinwheelSuccessCallback? _onSuccess;
  PinwheelLoginCallback? _onLogin;
  PinwheelLoginAttemptCallback? _onLoginAttempt;

  Pinwheel(
    int id,
    PinwheelErrorCallback? onError,
    PinwheelExitCallback? onExit,
    PinwheelEventCallback? onEvent,
    PinwheelSuccessCallback? onSuccess,
    PinwheelLoginCallback? onLogin,
    PinwheelLoginAttemptCallback? onLoginAttempt
  ) {

    _channel.setMethodCallHandler(_handleMethod);
    _onError = onError;
    _onExit = onExit;
    _onEvent = onEvent;
    _onSuccess = onSuccess;
    _onLogin = onLogin;
    _onLoginAttempt = onLoginAttempt;
  }

  Future<dynamic> _handleMethod(MethodCall call) async {
    switch (call.method) {
      case 'onEvent':
        try {
          String name;
          PinwheelEventPayload? payload;
          if (call.arguments != null && call.arguments != "null") {
            var data = _standardSerializers.deserializeWith(
                PinwheelEventChannelArgument.serializer, json.decode(call.arguments))!;
            name = data.name;
            if (data.payload != null) {
              String payloadString = data.payload!;
              switch (name) {
                case 'select_employer':
                  payload = _standardSerializers.deserializeWith(PinwheelSelectedEmployerPayload.serializer, json.decode(payloadString))!;
                  break;
                case 'select_platform':
                  payload = _standardSerializers.deserializeWith(PinwheelSelectedPlatformPayload.serializer, json.decode(payloadString))!;
                  break;
                case 'login':
                  payload = _standardSerializers.deserializeWith(PinwheelLoginPayload.serializer, json.decode(payloadString))!;
                  break;
                case 'login_attempt':
                  payload = _standardSerializers.deserializeWith(PinwheelLoginAttemptPayload.serializer, json.decode(payloadString))!;
                  break;
                case 'exit':
                  payload = _standardSerializers.deserializeWith(PinwheelSelectedEmployerPayload.serializer, json.decode(payloadString))!;
                  break;
                case 'success':
                  payload = _standardSerializers.deserializeWith(PinwheelSuccessPayload.serializer, json.decode(payloadString))!;
                  break;
                case 'error':
                  payload = _standardSerializers.deserializeWith(PinwheelError.serializer, json.decode(payloadString))!;
                  break;
              }
            }
            if (_onEvent != null) {
              _onEvent!(name, payload);
            }  
          }
        } catch(error) {
          print(error);
        }
        break;

      case 'onExit':
        try {
          PinwheelExitPayload? result;
          if (call.arguments != null && call.arguments != "null") {
            result = _standardSerializers.deserializeWith(PinwheelExitPayload.serializer, json.decode(call.arguments))!;
          }
          if (_onExit != null) {
            _onExit!(result);
          }
          
        } catch(error) {
          print(error);
        }
        break;
      case 'onError':
        try {
          var result = _standardSerializers.deserializeWith(PinwheelError.serializer, json.decode(call.arguments))!;
          if (_onError != null) {
            _onError!(result);
          }
        } catch(error) {
        }
        break;
      case 'onSuccess':
        try {
          var result = _standardSerializers.deserializeWith(PinwheelSuccessPayload.serializer, json.decode(call.arguments))!;
          if (_onSuccess != null) {
            _onSuccess!(result);
          }
        } catch(error) {
          print(error);
        }
        break;
      case 'onLogin':
        try {
          var result = _standardSerializers.deserializeWith(PinwheelLoginPayload.serializer, json.decode(call.arguments))!;
          if (_onLogin != null) {
            _onLogin!(result);
          }
        } catch(error) {
          print(error);
        }
        break;
      case 'onLoginAttempt':
        try {
          var result = _standardSerializers.deserializeWith(PinwheelLoginAttemptPayload.serializer, json.decode(call.arguments))!;
          if (_onLoginAttempt != null) {
            _onLoginAttempt!(result);
          }
        } catch(error) {
          print(error);
        }
        break;
    }
  }
}

class PinwheelLink extends StatefulWidget {
  final String token;
  final PinwheelExitCallback? onExit;
  final PinwheelErrorCallback? onError;
  final PinwheelEventCallback? onEvent;
  final PinwheelSuccessCallback? onSuccess;
  final PinwheelLoginCallback? onLogin;
  final PinwheelLoginAttemptCallback? onLoginAttempt;

  const PinwheelLink ({ 
    Key? key, 
    required this.token,
    this.onExit,
    this.onError,
    this.onEvent,
    this.onSuccess,
    this.onLogin,
    this.onLoginAttempt
  }): super(key: key);

  @override
  PinwheelLinkState createState() => PinwheelLinkState();
}

class PinwheelLinkState extends State<PinwheelLink> {
  Pinwheel? controller;

  Widget build(BuildContext context) {
    final String viewType = 'pinwheel-link-view';
    final Map<String, String> creationParams = {
      "token": widget.token
    };
    
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return PlatformViewLink(
          viewType: viewType,
          surfaceFactory: (BuildContext context, PlatformViewController controller) {

            return AndroidViewSurface(
              controller: controller as AndroidViewController,
              gestureRecognizers: const <Factory<OneSequenceGestureRecognizer>>{},
              hitTestBehavior: PlatformViewHitTestBehavior.opaque,
            );
          },
          onCreatePlatformView: (PlatformViewCreationParams params) {
            return PlatformViewsService.initSurfaceAndroidView(
              id: params.id,
              viewType: viewType,
              layoutDirection: TextDirection.ltr,
              creationParams: creationParams,
              creationParamsCodec: JSONMessageCodec(),
            )
            ..addOnPlatformViewCreatedListener((int id) {
              params.onPlatformViewCreated(id);
              _onPlatformViewCreated(id);
            })
            ..create();
          },
        );
      case TargetPlatform.iOS:
        return UiKitView(
          viewType: viewType,
          onPlatformViewCreated: _onPlatformViewCreated,
          layoutDirection: TextDirection.ltr,
          creationParams: creationParams,
          creationParamsCodec: JSONMessageCodec(),
        );
      default:
        throw UnsupportedError("Unsupported platform view");
    }
  }

  void _onPlatformViewCreated(int id) {
    controller = Pinwheel(
      id,
      widget.onError,
      widget.onExit,
      widget.onEvent,
      widget.onSuccess,
      widget.onLogin,
      widget.onLoginAttempt,
    );
  }
}
