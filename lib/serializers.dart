import 'package:built_value/serializer.dart';
import 'models.dart';

part 'serializers.g.dart';

// ignore: unnecessary_const
@SerializersFor(const [
  PinhweelAllocation,
  PinwheelAmountPayload,
  PinwheelInputAllocationPayload,
  PinwheelError,
  PinwheelExitPayload,
  PinwheelLoginPayload,
  PinwheelLoginAttemptPayload,
  PinwheelParams,
  PinwheelSelectedEmployerPayload,
  PinwheelSelectedPlatformPayload,
  PinwheelDDFormCreatePayload,
  PinwheelSuccessPayload,
  PinwheelEventChannelArgument
])
final Serializers serializers = _$serializers;
