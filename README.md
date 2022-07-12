# Flutter plugin for the Pinwheel SDK

The Flutter plugin for [Pinwheel's Link SDK](https://docs.getpinwheel.com/) is a wrapper for the native Android and iOS SDKs and supports Link version 2.3.0.

See the included [example app](./example/README.md) for a working demo.

## Before you start

You will need a Pinwheel developer account, and an API secret before you can use Pinwheel Flutter SDK.

## Installation and Usage

1. **Add the depenedency to pubspec.yaml.**

```yaml
dependencies:
  pinwheel:
      git:
        url: git://github.com/underdog-tech/pinwheel-flutter-sdk.git
        ref: main
```

2. **Import the Pinwheel widget, and models.**

```dart
import 'package:pinwheel/models.dart';
import 'package:pinwheel/pinwheel.dart';
```

3. **Implement any callbacks, these are all optional.** 

Details for the callbacks, and model objects can be found in the [lib/models.dart](./lib/models.dart), and [lib/pinwheel.dart](./lib/pinwheel.dart) files.

Read more about Link events on [our docs site](https://docs.getpinwheel.com/docs/api/docs/introduction/Link.md#link-events).

```dart
_onExit(PinwheelExitPayload? payload) {
  print(payload);
  Navigator.pop(context);
}

_onEvent(String name, PinwheelEventPayload? payload) {
  print(payload);
}

_onError(PinwheelError error) {
  print(error);
}

_onSuccess(PinwheelSuccessPayload payload) {
  print(payload);
}

_onLogin(PinwheelLoginPayload payload) {
  print(payload);
}
```

4. **Fetch the Link token from your server.**

Read more about Link tokens in the [Implementation overview on our docs site](https://docs.getpinwheel.com/docs/api/docs/introduction/Getting-Started.md#implementation-overview). **Do not include your API secret, and fetch Link tokens directly from your app.**


5. **Initialize the PinwheelLink StatefulWidget.**

```dart
PinwheelLink link = PinwheelLink(
  token: payload.token, 
  onExit: _onExit,
  onError: _onError, 
  onEvent: _onEvent,
  onSuccess: _onSuccess,
  onLogin: _onLogin,
);
  ```

6. **Show the widget**

`PinwheelLink` is a `StatefulWidget` that you can display and hide in your app's view hierarchy. 

## Build requirements
  
### Android

* Android minSdkVersion is API 22 or higher. 
* Android Target SDK version: API 30.
* Android SDK build tools: 26.0.3
* Android Gradle Plugin: 3.0.0 or greater.

### iOS

* Xcode version: 9.1 or greater.
* iOS Base SDK: 11.1 or greater.
* Deployment target: iOS 12.0 or greater.

## License

MIT