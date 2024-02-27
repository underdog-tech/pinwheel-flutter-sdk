# Change Log

All notable changes to this project will be documented in this file.

## 3.0.x Releases
- `3.0.x` Releases - [3.0.0](#300)

## 2.4.x Releases
- `2.4.x` Releases - [2.4.0](#240)

## 2.3.x Releases
- `2.3.x` Releases - [2.3.0](#230) | [2.3.1](#231) | [2.3.2](#232)

## 0.0.x Releases
- `0.0.x` Releases - [0.0.1](#001) | [0.0.2](#002) | [0.0.3](#003)

---

### [3.0.0](https://github.com/underdog-tech/pinwheel-flutter-sdk/releases/tag/3.0.0)

This new major version bump introduces an updated API to support partner-based switches. Expands internal functionality to support a broader range of platforms and increase conversion rate.

#### Changed
- The `action` field in `input_allocation` event is now optional.
- The `params` field in the `success` event uses the `input_allocation` schema with fields `action` and `allocation`.

#### Removed
- Removed `LinkResult` type export. This was the old `success` event payload. The new payload has the same format as the newly exported `SuccessEventPayload`.
- Removed `EventPayload` type export. The event handler function will now be implicitly typed.
- Removed `ScreenTransition` type export. Use `ScreenTransitionEventPayload` instead.
- Removed `EmptyPayloadObject` type export.
- Removed `Error` type export. Use `ErrorEventPayload` instead. (`Error` was marked as deprecated in version 2.)
- Removed `ErrorType` type export. Use `PinwheelErrorType` instead. (`ErrorType` was marked as deprecated in version 2.)
- Removed `input_amount` event. Use `input_allocation` even instead.
- Removed `PINWHEEL_MESSAGE_TYPES`.

### [2.4.0](https://github.com/underdog-tech/pinwheel-flutter-sdk/releases/tag/2.4.0)

#### Updated
- Updated Android and iOS versions
  - Added by [Robby Abaya](https://github.com/rawbee) in Pull Request [#31](https://github.com/underdog-tech/pinwheel-flutter-sdk/pull/31).

### [2.3.6](https://github.com/underdog-tech/pinwheel-flutter-sdk/releases/tag/2.3.6)

#### Updated
- Updated Android project
  - Added by [Robby Abaya](https://github.com/rawbee) in Pull Request [#18](https://github.com/underdog-tech/pinwheel-flutter-sdk/pull/25).

### [2.3.5](https://github.com/underdog-tech/pinwheel-flutter-sdk/releases/tag/2.3.5)

#### Added
- Added support for `input_allocation` event
  - Added by [Robby Abaya](https://github.com/rawbee) in Pull Request [#18](https://github.com/underdog-tech/pinwheel-flutter-sdk/pull/23).

### [2.3.4](https://github.com/underdog-tech/pinwheel-flutter-sdk/releases/tag/2.3.4)

#### Updated
- Updated to use built_value 8.3.2
  - Added by [Robby Abaya](https://github.com/rawbee) in Pull Request [#18](https://github.com/underdog-tech/pinwheel-flutter-sdk/pull/20).
- Updated models
  - Added by [Robby Abaya](https://github.com/rawbee) in Pull Request [#18](https://github.com/underdog-tech/pinwheel-flutter-sdk/pull/21).

### [2.3.3](https://github.com/underdog-tech/pinwheel-flutter-sdk/releases/tag/2.3.3)

#### Updated
- Updated to use Flutter 3.0.0
  - Added by [Robby Abaya](https://github.com/rawbee) in Pull Request [#18](https://github.com/underdog-tech/pinwheel-flutter-sdk/pull/18).

### [2.3.2](https://github.com/underdog-tech/pinwheel-flutter-sdk/releases/tag/2.3.2)

#### Added
- Add support for input_required event.
  - Added by [Robby Abaya](https://github.com/rawbee) in Pull Request [#16](https://github.com/underdog-tech/pinwheel-flutter-sdk/pull/16).

### [2.3.1](https://github.com/underdog-tech/pinwheel-flutter-sdk/releases/tag/2.3.1)

#### Added
- Add support for platformId in success event payload.
  - Added by [Robby Abaya](https://github.com/rawbee) in Pull Request [#14](https://github.com/underdog-tech/pinwheel-flutter-sdk/pull/14).

### [2.3.0](https://github.com/underdog-tech/pinwheel-flutter-sdk/releases/tag/2.3.0)

#### Added
- Add support for login_attempt to example app.
  - Added by [Robby Abaya](https://github.com/rawbee) in Pull Request [#12](https://github.com/underdog-tech/pinwheel-flutter-sdk/pull/12).
- Add support for login attempt event
  - Added by [Robby Abaya](https://github.com/rawbee) in Pull Request [#11](https://github.com/underdog-tech/pinwheel-flutter-sdk/pull/11).

### [0.0.3](https://github.com/underdog-tech/pinwheel-flutter-sdk/releases/tag/0.0.3)

#### Added
- Added proguard R8 rule to protect Android Plugin classes from being removed.

### [0.0.2](https://github.com/underdog-tech/pinwheel-flutter-sdk/releases/tag/0.0.2)

#### Updated
- Update iOS dependency to [2.3.6](https://github.com/underdog-tech/pinwheel-ios-sdk/releases)
- Update Android dependency to [2.3.11](https://github.com/underdog-tech/pinwheel-android-sdk/releases)

### [0.0.1](https://github.com/underdog-tech/pinwheel-flutter-sdk/releases/tag/0.0.1)
Beta release
