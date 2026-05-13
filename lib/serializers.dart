import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'models.dart';

part 'serializers.g.dart';

// ignore: unnecessary_const
@SerializersFor(const [
  PinwheelAllocation,
  PinwheelTarget,
  PinwheelInputAllocationPayload,
  PinwheelError,
  PinwheelExitPayload,
  PinwheelLoginPayload,
  PinwheelLoginAttemptPayload,
  PinwheelParams,
  PinwheelSelectedEmployerPayload,
  PinwheelSelectedPlatformPayload,
  PinwheelSuccessPayload,
  PinwheelEventChannelArgument,
  PinwheelDDFormCreatePayload,
  PinwheelScreenTransitionPayload,
  PinwheelOtherEventPayload,
  PinwheelOtherEventPayloadItem,
  PinwheelOtherEventPayloadValueType,
  PinwheelDocumentUploadsBeginPayload,
  PinwheelDocumentUploadsSubmittedPayload,
  PinwheelBillSwitchPayload,
  PinwheelBillPayload,
  PinwheelBillSwitchPlatform,
  PinwheelBillSwitchPlatformsPayload,
  PinwheelExternalAccountConnectedPayload,
  PinwheelCalendarSyncPayload,
  PinwheelUserActivatedPayload
])
final Serializers serializers = _$serializers;
