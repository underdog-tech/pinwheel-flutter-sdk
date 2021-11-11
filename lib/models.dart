import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'models.g.dart';

@BuiltValue(instantiable: false)
abstract class PinwheelEventPayload extends Object {

  PinwheelEventPayload rebuild(void Function(PinwheelEventPayloadBuilder) updates);
  PinwheelEventPayloadBuilder toBuilder();
}

abstract class PinwheelAmountPayload implements PinwheelEventPayload, Built<PinwheelAmountPayload, PinwheelAmountPayloadBuilder> {
  String get unit;
  double get value;

  PinwheelAmountPayload._();
  factory PinwheelAmountPayload([updates(PinwheelAmountPayloadBuilder b)]) = _$PinwheelAmountPayload;
  static Serializer<PinwheelAmountPayload> get serializer => _$pinwheelAmountPayloadSerializer;
}

abstract class PinwheelError implements PinwheelEventPayload, Built<PinwheelError, PinwheelErrorBuilder> {
  String get type;
  String get code;
  String get message;
  bool get pendingRetry;

  PinwheelError._();
  factory PinwheelError([updates(PinwheelErrorBuilder b)]) = _$PinwheelError;
  static Serializer<PinwheelError> get serializer => _$pinwheelErrorSerializer;
}

abstract class PinwheelExitPayload implements PinwheelEventPayload, Built<PinwheelExitPayload, PinwheelExitPayloadBuilder> {
  PinwheelError? get error;

  PinwheelExitPayload._();

  factory PinwheelExitPayload([updates(PinwheelExitPayloadBuilder b)]) = _$PinwheelExitPayload;
  static Serializer<PinwheelExitPayload> get serializer => _$pinwheelExitPayloadSerializer;
}

abstract class PinwheelLoginPayload implements PinwheelEventPayload, Built<PinwheelLoginPayload, PinwheelLoginPayloadBuilder> {
  String get accountId;
  String? get platformId;

  PinwheelLoginPayload._();

  factory PinwheelLoginPayload([updates(PinwheelLoginPayloadBuilder b)]) = _$PinwheelLoginPayload;
  static Serializer<PinwheelLoginPayload> get serializer => _$pinwheelLoginPayloadSerializer;
}

abstract class PinwheelLoginAttemptPayload implements PinwheelEventPayload, Built<PinwheelLoginAttemptPayload, PinwheelLoginAttemptPayloadBuilder> {
  String get platformId;

  PinwheelLoginAttemptPayload._();

  factory PinwheelLoginAttemptPayload([updates(PinwheelLoginAttemptPayloadBuilder b)]) = _$PinwheelLoginAttemptPayload;
  static Serializer<PinwheelLoginAttemptPayload> get serializer => _$pinwheelLoginAttemptPayloadSerializer;
}

abstract class PinwheelParams implements PinwheelEventPayload, Built<PinwheelParams, PinwheelParamsBuilder> {
  PinwheelAmountPayload? get amount;

  PinwheelParams._();

  factory PinwheelParams([updates(PinwheelParamsBuilder b)]) = _$PinwheelParams;
  static Serializer<PinwheelParams> get serializer => _$pinwheelParamsSerializer;
}

abstract class PinwheelSelectedEmployerPayload implements PinwheelEventPayload, Built<PinwheelSelectedEmployerPayload, PinwheelSelectedEmployerPayloadBuilder> {
  String get selectedEmployerId;
  String get selectedEmployerName;

  PinwheelSelectedEmployerPayload._();

  factory PinwheelSelectedEmployerPayload([updates(PinwheelSelectedEmployerPayloadBuilder b)]) = _$PinwheelSelectedEmployerPayload;
  static Serializer<PinwheelSelectedEmployerPayload> get serializer => _$pinwheelSelectedEmployerPayloadSerializer;
}

abstract class PinwheelSelectedPlatformPayload implements PinwheelEventPayload, Built<PinwheelSelectedPlatformPayload, PinwheelSelectedPlatformPayloadBuilder> {
  String get selectedPlatformId;
  String get selectedPlatformName;

  PinwheelSelectedPlatformPayload._();

  factory PinwheelSelectedPlatformPayload([updates(PinwheelSelectedPlatformPayloadBuilder b)]) = _$PinwheelSelectedPlatformPayload;
  static Serializer<PinwheelSelectedPlatformPayload> get serializer => _$pinwheelSelectedPlatformPayloadSerializer;
}

abstract class PinwheelSuccessPayload implements PinwheelEventPayload, Built<PinwheelSuccessPayload, PinwheelSuccessPayloadBuilder> {
  String get accountId;
  String get platformId;
  String get job;
  PinwheelParams get params;

  PinwheelSuccessPayload._();

  factory PinwheelSuccessPayload([updates(PinwheelSuccessPayloadBuilder b)]) = _$PinwheelSuccessPayload;
  static Serializer<PinwheelSuccessPayload> get serializer => _$pinwheelSuccessPayloadSerializer;
}

abstract class PinwheelEventChannelArgument implements Built<PinwheelEventChannelArgument, PinwheelEventChannelArgumentBuilder> {
  String get name;
  String? get payload;

  PinwheelEventChannelArgument._();

  factory PinwheelEventChannelArgument([updates(PinwheelEventChannelArgumentBuilder b)]) = _$PinwheelEventChannelArgument;
  static Serializer<PinwheelEventChannelArgument> get serializer => _$pinwheelEventChannelArgumentSerializer;
}
