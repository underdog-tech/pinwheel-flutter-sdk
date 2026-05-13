import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'models.g.dart';

@BuiltValue(instantiable: false)
abstract class PinwheelEventPayload extends Object {
  PinwheelEventPayload rebuild(
      void Function(PinwheelEventPayloadBuilder) updates);
  PinwheelEventPayloadBuilder toBuilder();
}

abstract class PinwheelAllocation
    implements
        PinwheelEventPayload,
        Built<PinwheelAllocation, PinwheelAllocationBuilder> {
  String get type;
  double? get value;
  PinwheelTarget? get target;

  PinwheelAllocation._();
  factory PinwheelAllocation([updates(PinwheelAllocationBuilder b)]) =
      _$PinwheelAllocation;
  static Serializer<PinwheelAllocation> get serializer =>
      _$pinwheelAllocationSerializer;
}

abstract class PinwheelTarget
    implements
        PinwheelEventPayload,
        Built<PinwheelTarget, PinwheelTargetBuilder> {
  String get accountType;
  String? get accountName;

  PinwheelTarget._();
  factory PinwheelTarget([updates(PinwheelTargetBuilder b)]) = _$PinwheelTarget;
  static Serializer<PinwheelTarget> get serializer =>
      _$pinwheelTargetSerializer;
}

abstract class PinwheelInputAllocationPayload
    implements
        PinwheelEventPayload,
        Built<PinwheelInputAllocationPayload,
            PinwheelInputAllocationPayloadBuilder> {
  String? get action;
  PinwheelAllocation? get allocation;

  PinwheelInputAllocationPayload._();
  factory PinwheelInputAllocationPayload(
          [updates(PinwheelInputAllocationPayloadBuilder b)]) =
      _$PinwheelInputAllocationPayload;
  static Serializer<PinwheelInputAllocationPayload> get serializer =>
      _$pinwheelInputAllocationPayloadSerializer;
}

abstract class PinwheelError
    implements
        PinwheelEventPayload,
        Built<PinwheelError, PinwheelErrorBuilder> {
  String get type;
  String get code;
  String get message;
  bool get pendingRetry;

  PinwheelError._();
  factory PinwheelError([updates(PinwheelErrorBuilder b)]) = _$PinwheelError;
  static Serializer<PinwheelError> get serializer => _$pinwheelErrorSerializer;
}

abstract class PinwheelExitPayload
    implements
        PinwheelEventPayload,
        Built<PinwheelExitPayload, PinwheelExitPayloadBuilder> {
  PinwheelError? get error;

  PinwheelExitPayload._();

  factory PinwheelExitPayload([updates(PinwheelExitPayloadBuilder b)]) =
      _$PinwheelExitPayload;
  static Serializer<PinwheelExitPayload> get serializer =>
      _$pinwheelExitPayloadSerializer;
}

abstract class PinwheelLoginPayload
    implements
        PinwheelEventPayload,
        Built<PinwheelLoginPayload, PinwheelLoginPayloadBuilder> {
  String get accountId;
  String? get platformId;

  PinwheelLoginPayload._();

  factory PinwheelLoginPayload([updates(PinwheelLoginPayloadBuilder b)]) =
      _$PinwheelLoginPayload;
  static Serializer<PinwheelLoginPayload> get serializer =>
      _$pinwheelLoginPayloadSerializer;
}

abstract class PinwheelLoginAttemptPayload
    implements
        PinwheelEventPayload,
        Built<PinwheelLoginAttemptPayload, PinwheelLoginAttemptPayloadBuilder> {
  String get platformId;

  PinwheelLoginAttemptPayload._();

  factory PinwheelLoginAttemptPayload(
          [updates(PinwheelLoginAttemptPayloadBuilder b)]) =
      _$PinwheelLoginAttemptPayload;
  static Serializer<PinwheelLoginAttemptPayload> get serializer =>
      _$pinwheelLoginAttemptPayloadSerializer;
}

abstract class PinwheelParams
    implements
        PinwheelEventPayload,
        Built<PinwheelParams, PinwheelParamsBuilder> {
  String? get action;
  PinwheelAllocation? get allocation;

  PinwheelParams._();

  factory PinwheelParams([updates(PinwheelParamsBuilder b)]) = _$PinwheelParams;
  static Serializer<PinwheelParams> get serializer =>
      _$pinwheelParamsSerializer;
}

abstract class PinwheelSelectedEmployerPayload
    implements
        PinwheelEventPayload,
        Built<PinwheelSelectedEmployerPayload,
            PinwheelSelectedEmployerPayloadBuilder> {
  String get selectedEmployerId;
  String get selectedEmployerName;

  PinwheelSelectedEmployerPayload._();

  factory PinwheelSelectedEmployerPayload(
          [updates(PinwheelSelectedEmployerPayloadBuilder b)]) =
      _$PinwheelSelectedEmployerPayload;
  static Serializer<PinwheelSelectedEmployerPayload> get serializer =>
      _$pinwheelSelectedEmployerPayloadSerializer;
}

abstract class PinwheelSelectedPlatformPayload
    implements
        PinwheelEventPayload,
        Built<PinwheelSelectedPlatformPayload,
            PinwheelSelectedPlatformPayloadBuilder> {
  String get selectedPlatformId;
  String get selectedPlatformName;

  PinwheelSelectedPlatformPayload._();

  factory PinwheelSelectedPlatformPayload(
          [updates(PinwheelSelectedPlatformPayloadBuilder b)]) =
      _$PinwheelSelectedPlatformPayload;
  static Serializer<PinwheelSelectedPlatformPayload> get serializer =>
      _$pinwheelSelectedPlatformPayloadSerializer;
}

abstract class PinwheelSuccessPayload
    implements
        PinwheelEventPayload,
        Built<PinwheelSuccessPayload, PinwheelSuccessPayloadBuilder> {
  String get accountId;
  String get platformId;
  String get job;
  PinwheelParams? get params;

  PinwheelSuccessPayload._();

  factory PinwheelSuccessPayload([updates(PinwheelSuccessPayloadBuilder b)]) =
      _$PinwheelSuccessPayload;
  static Serializer<PinwheelSuccessPayload> get serializer =>
      _$pinwheelSuccessPayloadSerializer;
}

abstract class PinwheelEventChannelArgument
    implements
        Built<PinwheelEventChannelArgument,
            PinwheelEventChannelArgumentBuilder> {
  String get name;
  String? get payload;

  PinwheelEventChannelArgument._();

  factory PinwheelEventChannelArgument(
          [updates(PinwheelEventChannelArgumentBuilder b)]) =
      _$PinwheelEventChannelArgument;
  static Serializer<PinwheelEventChannelArgument> get serializer =>
      _$pinwheelEventChannelArgumentSerializer;
}

abstract class PinwheelDDFormCreatePayload
    implements
        PinwheelEventPayload,
        Built<PinwheelDDFormCreatePayload, PinwheelDDFormCreatePayloadBuilder> {
  String get url;

  PinwheelDDFormCreatePayload._();

  factory PinwheelDDFormCreatePayload(
          [updates(PinwheelDDFormCreatePayloadBuilder b)]) =
      _$PinwheelDDFormCreatePayload;
  static Serializer<PinwheelDDFormCreatePayload> get serializer =>
      _$pinwheelDDFormCreatePayloadSerializer;
}

abstract class PinwheelScreenTransitionPayload
    implements
        PinwheelEventPayload,
        Built<PinwheelScreenTransitionPayload,
            PinwheelScreenTransitionPayloadBuilder> {
  String get screenName;
  String? get selectedEmployerId;
  String? get selectedEmployerName;
  String? get selectedPlatformId;
  String? get selectedPlatformName;

  PinwheelScreenTransitionPayload._();

  factory PinwheelScreenTransitionPayload(
          [updates(PinwheelScreenTransitionPayloadBuilder b)]) =
      _$PinwheelScreenTransitionPayload;
  static Serializer<PinwheelScreenTransitionPayload> get serializer =>
      _$pinwheelScreenTransitionPayloadSerializer;
}

class PinwheelOtherEventPayloadValueType extends EnumClass {
  @BuiltValueEnumConst(wireName: 'string')
  static const PinwheelOtherEventPayloadValueType STRING = _$string;

  @BuiltValueEnumConst(wireName: 'number')
  static const PinwheelOtherEventPayloadValueType NUMBER = _$number;

  @BuiltValueEnumConst(wireName: 'boolean')
  static const PinwheelOtherEventPayloadValueType BOOLEAN = _$boolean;

  const PinwheelOtherEventPayloadValueType._(String name) : super(name);

  static BuiltSet<PinwheelOtherEventPayloadValueType> get values =>
      _$pinwheelOtherEventPayloadValueTypeValues;
  static PinwheelOtherEventPayloadValueType valueOf(String name) =>
      _$pinwheelOtherEventPayloadValueTypeValueOf(name);

  static Serializer<PinwheelOtherEventPayloadValueType> get serializer =>
      _$pinwheelOtherEventPayloadValueTypeSerializer;
}

abstract class PinwheelOtherEventPayloadItem
    implements
        Built<PinwheelOtherEventPayloadItem,
            PinwheelOtherEventPayloadItemBuilder> {
  String get key;
  String get value;

  PinwheelOtherEventPayloadValueType get type;

  PinwheelOtherEventPayloadItem._();
  factory PinwheelOtherEventPayloadItem(
          [void Function(PinwheelOtherEventPayloadItemBuilder) updates]) =
      _$PinwheelOtherEventPayloadItem;

  static Serializer<PinwheelOtherEventPayloadItem> get serializer =>
      _$pinwheelOtherEventPayloadItemSerializer;
}

abstract class PinwheelOtherEventPayload
    implements
        PinwheelEventPayload,
        Built<PinwheelOtherEventPayload, PinwheelOtherEventPayloadBuilder> {
  String get name;
  BuiltList<PinwheelOtherEventPayloadItem> get payload;

  PinwheelOtherEventPayload._();
  factory PinwheelOtherEventPayload(
          [void Function(PinwheelOtherEventPayloadBuilder) updates]) =
      _$PinwheelOtherEventPayload;

  static Serializer<PinwheelOtherEventPayload> get serializer =>
      _$pinwheelOtherEventPayloadSerializer;
}

abstract class PinwheelDocumentUploadsBeginPayload
    implements
        PinwheelEventPayload,
        Built<PinwheelDocumentUploadsBeginPayload,
            PinwheelDocumentUploadsBeginPayloadBuilder> {
  int? get uploadedDocumentsSubmittedCount;

  PinwheelDocumentUploadsBeginPayload._();
  factory PinwheelDocumentUploadsBeginPayload(
          [void Function(PinwheelDocumentUploadsBeginPayloadBuilder) updates]) =
      _$PinwheelDocumentUploadsBeginPayload;

  static Serializer<PinwheelDocumentUploadsBeginPayload> get serializer =>
      _$pinwheelDocumentUploadsBeginPayloadSerializer;
}

abstract class PinwheelDocumentUploadsSubmittedPayload
    implements
        PinwheelEventPayload,
        Built<PinwheelDocumentUploadsSubmittedPayload,
            PinwheelDocumentUploadsSubmittedPayloadBuilder> {
  int get uploadedDocumentSubmittedCount;

  PinwheelDocumentUploadsSubmittedPayload._();
  factory PinwheelDocumentUploadsSubmittedPayload(
      [void Function(PinwheelDocumentUploadsSubmittedPayloadBuilder)
          updates]) = _$PinwheelDocumentUploadsSubmittedPayload;

  static Serializer<PinwheelDocumentUploadsSubmittedPayload> get serializer =>
      _$pinwheelDocumentUploadsSubmittedPayloadSerializer;
}

abstract class PinwheelBillSwitchPayload
    implements
        PinwheelEventPayload,
        Built<PinwheelBillSwitchPayload, PinwheelBillSwitchPayloadBuilder> {
  String get platformId;
  String get platformName;
  bool get isIntegratedSwitch;
  String get frequency;
  String get nextPaymentDate;
  int get amountCents;
  String? get accountId;

  PinwheelBillSwitchPayload._();
  factory PinwheelBillSwitchPayload(
          [void Function(PinwheelBillSwitchPayloadBuilder) updates]) =
      _$PinwheelBillSwitchPayload;

  static Serializer<PinwheelBillSwitchPayload> get serializer =>
      _$pinwheelBillSwitchPayloadSerializer;
}

abstract class PinwheelBillPayload
    implements
        PinwheelEventPayload,
        Built<PinwheelBillPayload, PinwheelBillPayloadBuilder> {
  String get platformId;
  String get platformName;
  String get frequency;
  String get nextPaymentDate;
  int get amountCents;

  PinwheelBillPayload._();
  factory PinwheelBillPayload(
          [void Function(PinwheelBillPayloadBuilder) updates]) =
      _$PinwheelBillPayload;

  static Serializer<PinwheelBillPayload> get serializer =>
      _$pinwheelBillPayloadSerializer;
}

abstract class PinwheelBillSwitchPlatform
    implements
        Built<PinwheelBillSwitchPlatform, PinwheelBillSwitchPlatformBuilder> {
  String get id;
  String get name;

  PinwheelBillSwitchPlatform._();
  factory PinwheelBillSwitchPlatform(
          [void Function(PinwheelBillSwitchPlatformBuilder) updates]) =
      _$PinwheelBillSwitchPlatform;

  static Serializer<PinwheelBillSwitchPlatform> get serializer =>
      _$pinwheelBillSwitchPlatformSerializer;
}

abstract class PinwheelBillSwitchPlatformsPayload
    implements
        PinwheelEventPayload,
        Built<PinwheelBillSwitchPlatformsPayload,
            PinwheelBillSwitchPlatformsPayloadBuilder> {
  BuiltList<PinwheelBillSwitchPlatform> get platforms;

  PinwheelBillSwitchPlatformsPayload._();
  factory PinwheelBillSwitchPlatformsPayload(
          [void Function(PinwheelBillSwitchPlatformsPayloadBuilder) updates]) =
      _$PinwheelBillSwitchPlatformsPayload;

  static Serializer<PinwheelBillSwitchPlatformsPayload> get serializer =>
      _$pinwheelBillSwitchPlatformsPayloadSerializer;
}

abstract class PinwheelExternalAccountConnectedPayload
    implements
        PinwheelEventPayload,
        Built<PinwheelExternalAccountConnectedPayload,
            PinwheelExternalAccountConnectedPayloadBuilder> {
  String get institutionName;
  String get accountName;

  PinwheelExternalAccountConnectedPayload._();
  factory PinwheelExternalAccountConnectedPayload(
      [void Function(PinwheelExternalAccountConnectedPayloadBuilder)
          updates]) = _$PinwheelExternalAccountConnectedPayload;

  static Serializer<PinwheelExternalAccountConnectedPayload> get serializer =>
      _$pinwheelExternalAccountConnectedPayloadSerializer;
}

abstract class PinwheelCalendarSyncPayload
    implements
        PinwheelEventPayload,
        Built<PinwheelCalendarSyncPayload, PinwheelCalendarSyncPayloadBuilder> {
  String get calendarType;

  PinwheelCalendarSyncPayload._();
  factory PinwheelCalendarSyncPayload(
          [void Function(PinwheelCalendarSyncPayloadBuilder) updates]) =
      _$PinwheelCalendarSyncPayload;

  static Serializer<PinwheelCalendarSyncPayload> get serializer =>
      _$pinwheelCalendarSyncPayloadSerializer;
}

abstract class PinwheelUserActivatedPayload
    implements
        PinwheelEventPayload,
        Built<PinwheelUserActivatedPayload,
            PinwheelUserActivatedPayloadBuilder> {
  String get solutionName;

  PinwheelUserActivatedPayload._();
  factory PinwheelUserActivatedPayload(
          [void Function(PinwheelUserActivatedPayloadBuilder) updates]) =
      _$PinwheelUserActivatedPayload;

  static Serializer<PinwheelUserActivatedPayload> get serializer =>
      _$pinwheelUserActivatedPayloadSerializer;
}
