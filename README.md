# Flutter plugin for the Pinwheel SDK

The Flutter plugin for [Pinwheel's Link SDK](https://docs.getpinwheel.com/) is a wrapper for the native Android and iOS SDKs and supports Link version 4.0.

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

## Camera access

Some platform integrations may require camera access for identity verification.

### Android

Your app's `MainActivity` must extend `FlutterFragmentActivity` instead of `FlutterActivity`. The plugin hosts Link in a `PinwheelFragment` so that it can request camera permission, which requires a `FragmentActivity`. If your app uses `FlutterActivity`, Link still loads, but camera-based verification flows will not work.

```kotlin
import io.flutter.embedding.android.FlutterFragmentActivity

class MainActivity : FlutterFragmentActivity()
```

The `android.permission.CAMERA` permission is declared by the Pinwheel Android SDK and merged into your app's manifest automatically.

### iOS

Add the `NSCameraUsageDescription` key to your app's `Info.plist`. iOS terminates apps that access the camera without it.

```xml
<key>NSCameraUsageDescription</key>
<string>We need access to your camera for verification purposes.</string>
```

## Build requirements

### Android

- Android minSdkVersion: API 23 or higher.
- Android compileSdkVersion: API 34 or higher.

### iOS

- Deployment target: iOS 15.0 or greater.

## License

MIT
