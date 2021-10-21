import 'package:built_value/serializer.dart';
import 'models.dart';

part 'serializers.g.dart';

// ignore: unnecessary_const
@SerializersFor(const [
  PinwheelAmountPayload,
  PinwheelError,
  PinwheelExitPayload,
  PinwheelLoginPayload,
  PinwheelLoginAttemptPayload,
  PinwheelParams,
  PinwheelSelectedEmployerPayload,
  PinwheelSelectedPlatformPayload,
  PinwheelSuccessPayload,
  PinwheelEventChannelArgument
])
final Serializers serializers = _$serializers;
