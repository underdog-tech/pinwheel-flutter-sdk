// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PinwheelOtherEventPayloadValueType _$string =
    const PinwheelOtherEventPayloadValueType._('STRING');
const PinwheelOtherEventPayloadValueType _$number =
    const PinwheelOtherEventPayloadValueType._('NUMBER');
const PinwheelOtherEventPayloadValueType _$boolean =
    const PinwheelOtherEventPayloadValueType._('BOOLEAN');

PinwheelOtherEventPayloadValueType _$pinwheelOtherEventPayloadValueTypeValueOf(
    String name) {
  switch (name) {
    case 'STRING':
      return _$string;
    case 'NUMBER':
      return _$number;
    case 'BOOLEAN':
      return _$boolean;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PinwheelOtherEventPayloadValueType>
    _$pinwheelOtherEventPayloadValueTypeValues = BuiltSet<
        PinwheelOtherEventPayloadValueType>(const <PinwheelOtherEventPayloadValueType>[
  _$string,
  _$number,
  _$boolean,
]);

Serializer<PinwheelAllocation> _$pinwheelAllocationSerializer =
    _$PinwheelAllocationSerializer();
Serializer<PinwheelTarget> _$pinwheelTargetSerializer =
    _$PinwheelTargetSerializer();
Serializer<PinwheelInputAllocationPayload>
    _$pinwheelInputAllocationPayloadSerializer =
    _$PinwheelInputAllocationPayloadSerializer();
Serializer<PinwheelError> _$pinwheelErrorSerializer =
    _$PinwheelErrorSerializer();
Serializer<PinwheelExitPayload> _$pinwheelExitPayloadSerializer =
    _$PinwheelExitPayloadSerializer();
Serializer<PinwheelLoginPayload> _$pinwheelLoginPayloadSerializer =
    _$PinwheelLoginPayloadSerializer();
Serializer<PinwheelLoginAttemptPayload>
    _$pinwheelLoginAttemptPayloadSerializer =
    _$PinwheelLoginAttemptPayloadSerializer();
Serializer<PinwheelParams> _$pinwheelParamsSerializer =
    _$PinwheelParamsSerializer();
Serializer<PinwheelSelectedEmployerPayload>
    _$pinwheelSelectedEmployerPayloadSerializer =
    _$PinwheelSelectedEmployerPayloadSerializer();
Serializer<PinwheelSelectedPlatformPayload>
    _$pinwheelSelectedPlatformPayloadSerializer =
    _$PinwheelSelectedPlatformPayloadSerializer();
Serializer<PinwheelSuccessPayload> _$pinwheelSuccessPayloadSerializer =
    _$PinwheelSuccessPayloadSerializer();
Serializer<PinwheelEventChannelArgument>
    _$pinwheelEventChannelArgumentSerializer =
    _$PinwheelEventChannelArgumentSerializer();
Serializer<PinwheelDDFormCreatePayload>
    _$pinwheelDDFormCreatePayloadSerializer =
    _$PinwheelDDFormCreatePayloadSerializer();
Serializer<PinwheelScreenTransitionPayload>
    _$pinwheelScreenTransitionPayloadSerializer =
    _$PinwheelScreenTransitionPayloadSerializer();
Serializer<PinwheelOtherEventPayloadValueType>
    _$pinwheelOtherEventPayloadValueTypeSerializer =
    _$PinwheelOtherEventPayloadValueTypeSerializer();
Serializer<PinwheelOtherEventPayloadItem>
    _$pinwheelOtherEventPayloadItemSerializer =
    _$PinwheelOtherEventPayloadItemSerializer();
Serializer<PinwheelOtherEventPayload> _$pinwheelOtherEventPayloadSerializer =
    _$PinwheelOtherEventPayloadSerializer();
Serializer<PinwheelDocumentUploadsBeginPayload>
    _$pinwheelDocumentUploadsBeginPayloadSerializer =
    _$PinwheelDocumentUploadsBeginPayloadSerializer();
Serializer<PinwheelDocumentUploadsSubmittedPayload>
    _$pinwheelDocumentUploadsSubmittedPayloadSerializer =
    _$PinwheelDocumentUploadsSubmittedPayloadSerializer();
Serializer<PinwheelBillSwitchPayload> _$pinwheelBillSwitchPayloadSerializer =
    _$PinwheelBillSwitchPayloadSerializer();
Serializer<PinwheelBillPayload> _$pinwheelBillPayloadSerializer =
    _$PinwheelBillPayloadSerializer();
Serializer<PinwheelBillSwitchPlatform> _$pinwheelBillSwitchPlatformSerializer =
    _$PinwheelBillSwitchPlatformSerializer();
Serializer<PinwheelBillSwitchPlatformsPayload>
    _$pinwheelBillSwitchPlatformsPayloadSerializer =
    _$PinwheelBillSwitchPlatformsPayloadSerializer();
Serializer<PinwheelExternalAccountConnectedPayload>
    _$pinwheelExternalAccountConnectedPayloadSerializer =
    _$PinwheelExternalAccountConnectedPayloadSerializer();
Serializer<PinwheelCalendarSyncPayload>
    _$pinwheelCalendarSyncPayloadSerializer =
    _$PinwheelCalendarSyncPayloadSerializer();
Serializer<PinwheelUserActivatedPayload>
    _$pinwheelUserActivatedPayloadSerializer =
    _$PinwheelUserActivatedPayloadSerializer();

class _$PinwheelAllocationSerializer
    implements StructuredSerializer<PinwheelAllocation> {
  @override
  final Iterable<Type> types = const [PinwheelAllocation, _$PinwheelAllocation];
  @override
  final String wireName = 'PinwheelAllocation';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PinwheelAllocation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.value;
    if (value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.target;
    if (value != null) {
      result
        ..add('target')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(PinwheelTarget)));
    }
    return result;
  }

  @override
  PinwheelAllocation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PinwheelAllocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'target':
          result.target.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PinwheelTarget))!
              as PinwheelTarget);
          break;
      }
    }

    return result.build();
  }
}

class _$PinwheelTargetSerializer
    implements StructuredSerializer<PinwheelTarget> {
  @override
  final Iterable<Type> types = const [PinwheelTarget, _$PinwheelTarget];
  @override
  final String wireName = 'PinwheelTarget';

  @override
  Iterable<Object?> serialize(Serializers serializers, PinwheelTarget object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'accountType',
      serializers.serialize(object.accountType,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.accountName;
    if (value != null) {
      result
        ..add('accountName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PinwheelTarget deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PinwheelTargetBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'accountType':
          result.accountType = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'accountName':
          result.accountName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$PinwheelInputAllocationPayloadSerializer
    implements StructuredSerializer<PinwheelInputAllocationPayload> {
  @override
  final Iterable<Type> types = const [
    PinwheelInputAllocationPayload,
    _$PinwheelInputAllocationPayload
  ];
  @override
  final String wireName = 'PinwheelInputAllocationPayload';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PinwheelInputAllocationPayload object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.action;
    if (value != null) {
      result
        ..add('action')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.allocation;
    if (value != null) {
      result
        ..add('allocation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(PinwheelAllocation)));
    }
    return result;
  }

  @override
  PinwheelInputAllocationPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PinwheelInputAllocationPayloadBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'action':
          result.action = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'allocation':
          result.allocation.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PinwheelAllocation))!
              as PinwheelAllocation);
          break;
      }
    }

    return result.build();
  }
}

class _$PinwheelErrorSerializer implements StructuredSerializer<PinwheelError> {
  @override
  final Iterable<Type> types = const [PinwheelError, _$PinwheelError];
  @override
  final String wireName = 'PinwheelError';

  @override
  Iterable<Object?> serialize(Serializers serializers, PinwheelError object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'pendingRetry',
      serializers.serialize(object.pendingRetry,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  PinwheelError deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PinwheelErrorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'pendingRetry':
          result.pendingRetry = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$PinwheelExitPayloadSerializer
    implements StructuredSerializer<PinwheelExitPayload> {
  @override
  final Iterable<Type> types = const [
    PinwheelExitPayload,
    _$PinwheelExitPayload
  ];
  @override
  final String wireName = 'PinwheelExitPayload';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PinwheelExitPayload object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.error;
    if (value != null) {
      result
        ..add('error')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(PinwheelError)));
    }
    return result;
  }

  @override
  PinwheelExitPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PinwheelExitPayloadBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'error':
          result.error.replace(serializers.deserialize(value,
              specifiedType: const FullType(PinwheelError))! as PinwheelError);
          break;
      }
    }

    return result.build();
  }
}

class _$PinwheelLoginPayloadSerializer
    implements StructuredSerializer<PinwheelLoginPayload> {
  @override
  final Iterable<Type> types = const [
    PinwheelLoginPayload,
    _$PinwheelLoginPayload
  ];
  @override
  final String wireName = 'PinwheelLoginPayload';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PinwheelLoginPayload object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'accountId',
      serializers.serialize(object.accountId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.platformId;
    if (value != null) {
      result
        ..add('platformId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PinwheelLoginPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PinwheelLoginPayloadBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'accountId':
          result.accountId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'platformId':
          result.platformId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$PinwheelLoginAttemptPayloadSerializer
    implements StructuredSerializer<PinwheelLoginAttemptPayload> {
  @override
  final Iterable<Type> types = const [
    PinwheelLoginAttemptPayload,
    _$PinwheelLoginAttemptPayload
  ];
  @override
  final String wireName = 'PinwheelLoginAttemptPayload';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PinwheelLoginAttemptPayload object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'platformId',
      serializers.serialize(object.platformId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  PinwheelLoginAttemptPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PinwheelLoginAttemptPayloadBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'platformId':
          result.platformId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PinwheelParamsSerializer
    implements StructuredSerializer<PinwheelParams> {
  @override
  final Iterable<Type> types = const [PinwheelParams, _$PinwheelParams];
  @override
  final String wireName = 'PinwheelParams';

  @override
  Iterable<Object?> serialize(Serializers serializers, PinwheelParams object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.action;
    if (value != null) {
      result
        ..add('action')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.allocation;
    if (value != null) {
      result
        ..add('allocation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(PinwheelAllocation)));
    }
    return result;
  }

  @override
  PinwheelParams deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PinwheelParamsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'action':
          result.action = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'allocation':
          result.allocation.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PinwheelAllocation))!
              as PinwheelAllocation);
          break;
      }
    }

    return result.build();
  }
}

class _$PinwheelSelectedEmployerPayloadSerializer
    implements StructuredSerializer<PinwheelSelectedEmployerPayload> {
  @override
  final Iterable<Type> types = const [
    PinwheelSelectedEmployerPayload,
    _$PinwheelSelectedEmployerPayload
  ];
  @override
  final String wireName = 'PinwheelSelectedEmployerPayload';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PinwheelSelectedEmployerPayload object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'selectedEmployerId',
      serializers.serialize(object.selectedEmployerId,
          specifiedType: const FullType(String)),
      'selectedEmployerName',
      serializers.serialize(object.selectedEmployerName,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  PinwheelSelectedEmployerPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PinwheelSelectedEmployerPayloadBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'selectedEmployerId':
          result.selectedEmployerId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'selectedEmployerName':
          result.selectedEmployerName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PinwheelSelectedPlatformPayloadSerializer
    implements StructuredSerializer<PinwheelSelectedPlatformPayload> {
  @override
  final Iterable<Type> types = const [
    PinwheelSelectedPlatformPayload,
    _$PinwheelSelectedPlatformPayload
  ];
  @override
  final String wireName = 'PinwheelSelectedPlatformPayload';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PinwheelSelectedPlatformPayload object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'selectedPlatformId',
      serializers.serialize(object.selectedPlatformId,
          specifiedType: const FullType(String)),
      'selectedPlatformName',
      serializers.serialize(object.selectedPlatformName,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  PinwheelSelectedPlatformPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PinwheelSelectedPlatformPayloadBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'selectedPlatformId':
          result.selectedPlatformId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'selectedPlatformName':
          result.selectedPlatformName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PinwheelSuccessPayloadSerializer
    implements StructuredSerializer<PinwheelSuccessPayload> {
  @override
  final Iterable<Type> types = const [
    PinwheelSuccessPayload,
    _$PinwheelSuccessPayload
  ];
  @override
  final String wireName = 'PinwheelSuccessPayload';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PinwheelSuccessPayload object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'accountId',
      serializers.serialize(object.accountId,
          specifiedType: const FullType(String)),
      'platformId',
      serializers.serialize(object.platformId,
          specifiedType: const FullType(String)),
      'job',
      serializers.serialize(object.job, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.params;
    if (value != null) {
      result
        ..add('params')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(PinwheelParams)));
    }
    return result;
  }

  @override
  PinwheelSuccessPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PinwheelSuccessPayloadBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'accountId':
          result.accountId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'platformId':
          result.platformId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'job':
          result.job = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'params':
          result.params.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PinwheelParams))!
              as PinwheelParams);
          break;
      }
    }

    return result.build();
  }
}

class _$PinwheelEventChannelArgumentSerializer
    implements StructuredSerializer<PinwheelEventChannelArgument> {
  @override
  final Iterable<Type> types = const [
    PinwheelEventChannelArgument,
    _$PinwheelEventChannelArgument
  ];
  @override
  final String wireName = 'PinwheelEventChannelArgument';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PinwheelEventChannelArgument object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.payload;
    if (value != null) {
      result
        ..add('payload')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PinwheelEventChannelArgument deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PinwheelEventChannelArgumentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'payload':
          result.payload = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$PinwheelDDFormCreatePayloadSerializer
    implements StructuredSerializer<PinwheelDDFormCreatePayload> {
  @override
  final Iterable<Type> types = const [
    PinwheelDDFormCreatePayload,
    _$PinwheelDDFormCreatePayload
  ];
  @override
  final String wireName = 'PinwheelDDFormCreatePayload';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PinwheelDDFormCreatePayload object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  PinwheelDDFormCreatePayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PinwheelDDFormCreatePayloadBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PinwheelScreenTransitionPayloadSerializer
    implements StructuredSerializer<PinwheelScreenTransitionPayload> {
  @override
  final Iterable<Type> types = const [
    PinwheelScreenTransitionPayload,
    _$PinwheelScreenTransitionPayload
  ];
  @override
  final String wireName = 'PinwheelScreenTransitionPayload';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PinwheelScreenTransitionPayload object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'screenName',
      serializers.serialize(object.screenName,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.selectedEmployerId;
    if (value != null) {
      result
        ..add('selectedEmployerId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.selectedEmployerName;
    if (value != null) {
      result
        ..add('selectedEmployerName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.selectedPlatformId;
    if (value != null) {
      result
        ..add('selectedPlatformId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.selectedPlatformName;
    if (value != null) {
      result
        ..add('selectedPlatformName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PinwheelScreenTransitionPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PinwheelScreenTransitionPayloadBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'screenName':
          result.screenName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'selectedEmployerId':
          result.selectedEmployerId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'selectedEmployerName':
          result.selectedEmployerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'selectedPlatformId':
          result.selectedPlatformId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'selectedPlatformName':
          result.selectedPlatformName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$PinwheelOtherEventPayloadValueTypeSerializer
    implements PrimitiveSerializer<PinwheelOtherEventPayloadValueType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'STRING': 'string',
    'NUMBER': 'number',
    'BOOLEAN': 'boolean',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'string': 'STRING',
    'number': 'NUMBER',
    'boolean': 'BOOLEAN',
  };

  @override
  final Iterable<Type> types = const <Type>[PinwheelOtherEventPayloadValueType];
  @override
  final String wireName = 'PinwheelOtherEventPayloadValueType';

  @override
  Object serialize(
          Serializers serializers, PinwheelOtherEventPayloadValueType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PinwheelOtherEventPayloadValueType deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PinwheelOtherEventPayloadValueType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PinwheelOtherEventPayloadItemSerializer
    implements StructuredSerializer<PinwheelOtherEventPayloadItem> {
  @override
  final Iterable<Type> types = const [
    PinwheelOtherEventPayloadItem,
    _$PinwheelOtherEventPayloadItem
  ];
  @override
  final String wireName = 'PinwheelOtherEventPayloadItem';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PinwheelOtherEventPayloadItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'key',
      serializers.serialize(object.key, specifiedType: const FullType(String)),
      'value',
      serializers.serialize(object.value,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(PinwheelOtherEventPayloadValueType)),
    ];

    return result;
  }

  @override
  PinwheelOtherEventPayloadItem deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PinwheelOtherEventPayloadItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'key':
          result.key = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
                  specifiedType:
                      const FullType(PinwheelOtherEventPayloadValueType))!
              as PinwheelOtherEventPayloadValueType;
          break;
      }
    }

    return result.build();
  }
}

class _$PinwheelOtherEventPayloadSerializer
    implements StructuredSerializer<PinwheelOtherEventPayload> {
  @override
  final Iterable<Type> types = const [
    PinwheelOtherEventPayload,
    _$PinwheelOtherEventPayload
  ];
  @override
  final String wireName = 'PinwheelOtherEventPayload';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PinwheelOtherEventPayload object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'payload',
      serializers.serialize(object.payload,
          specifiedType: const FullType(BuiltList,
              const [const FullType(PinwheelOtherEventPayloadItem)])),
    ];

    return result;
  }

  @override
  PinwheelOtherEventPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PinwheelOtherEventPayloadBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'payload':
          result.payload.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(PinwheelOtherEventPayloadItem)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$PinwheelDocumentUploadsBeginPayloadSerializer
    implements StructuredSerializer<PinwheelDocumentUploadsBeginPayload> {
  @override
  final Iterable<Type> types = const [
    PinwheelDocumentUploadsBeginPayload,
    _$PinwheelDocumentUploadsBeginPayload
  ];
  @override
  final String wireName = 'PinwheelDocumentUploadsBeginPayload';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PinwheelDocumentUploadsBeginPayload object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.uploadedDocumentsSubmittedCount;
    if (value != null) {
      result
        ..add('uploadedDocumentsSubmittedCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  PinwheelDocumentUploadsBeginPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PinwheelDocumentUploadsBeginPayloadBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uploadedDocumentsSubmittedCount':
          result.uploadedDocumentsSubmittedCount = serializers
              .deserialize(value, specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$PinwheelDocumentUploadsSubmittedPayloadSerializer
    implements StructuredSerializer<PinwheelDocumentUploadsSubmittedPayload> {
  @override
  final Iterable<Type> types = const [
    PinwheelDocumentUploadsSubmittedPayload,
    _$PinwheelDocumentUploadsSubmittedPayload
  ];
  @override
  final String wireName = 'PinwheelDocumentUploadsSubmittedPayload';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PinwheelDocumentUploadsSubmittedPayload object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'uploadedDocumentSubmittedCount',
      serializers.serialize(object.uploadedDocumentSubmittedCount,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  PinwheelDocumentUploadsSubmittedPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PinwheelDocumentUploadsSubmittedPayloadBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uploadedDocumentSubmittedCount':
          result.uploadedDocumentSubmittedCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$PinwheelBillSwitchPayloadSerializer
    implements StructuredSerializer<PinwheelBillSwitchPayload> {
  @override
  final Iterable<Type> types = const [
    PinwheelBillSwitchPayload,
    _$PinwheelBillSwitchPayload
  ];
  @override
  final String wireName = 'PinwheelBillSwitchPayload';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PinwheelBillSwitchPayload object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'platformId',
      serializers.serialize(object.platformId,
          specifiedType: const FullType(String)),
      'platformName',
      serializers.serialize(object.platformName,
          specifiedType: const FullType(String)),
      'isIntegratedSwitch',
      serializers.serialize(object.isIntegratedSwitch,
          specifiedType: const FullType(bool)),
      'frequency',
      serializers.serialize(object.frequency,
          specifiedType: const FullType(String)),
      'nextPaymentDate',
      serializers.serialize(object.nextPaymentDate,
          specifiedType: const FullType(String)),
      'amountCents',
      serializers.serialize(object.amountCents,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.accountId;
    if (value != null) {
      result
        ..add('accountId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PinwheelBillSwitchPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PinwheelBillSwitchPayloadBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'platformId':
          result.platformId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'platformName':
          result.platformName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'isIntegratedSwitch':
          result.isIntegratedSwitch = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'frequency':
          result.frequency = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'nextPaymentDate':
          result.nextPaymentDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'amountCents':
          result.amountCents = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'accountId':
          result.accountId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$PinwheelBillPayloadSerializer
    implements StructuredSerializer<PinwheelBillPayload> {
  @override
  final Iterable<Type> types = const [
    PinwheelBillPayload,
    _$PinwheelBillPayload
  ];
  @override
  final String wireName = 'PinwheelBillPayload';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PinwheelBillPayload object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'platformId',
      serializers.serialize(object.platformId,
          specifiedType: const FullType(String)),
      'platformName',
      serializers.serialize(object.platformName,
          specifiedType: const FullType(String)),
      'frequency',
      serializers.serialize(object.frequency,
          specifiedType: const FullType(String)),
      'nextPaymentDate',
      serializers.serialize(object.nextPaymentDate,
          specifiedType: const FullType(String)),
      'amountCents',
      serializers.serialize(object.amountCents,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  PinwheelBillPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PinwheelBillPayloadBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'platformId':
          result.platformId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'platformName':
          result.platformName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'frequency':
          result.frequency = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'nextPaymentDate':
          result.nextPaymentDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'amountCents':
          result.amountCents = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$PinwheelBillSwitchPlatformSerializer
    implements StructuredSerializer<PinwheelBillSwitchPlatform> {
  @override
  final Iterable<Type> types = const [
    PinwheelBillSwitchPlatform,
    _$PinwheelBillSwitchPlatform
  ];
  @override
  final String wireName = 'PinwheelBillSwitchPlatform';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PinwheelBillSwitchPlatform object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  PinwheelBillSwitchPlatform deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PinwheelBillSwitchPlatformBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PinwheelBillSwitchPlatformsPayloadSerializer
    implements StructuredSerializer<PinwheelBillSwitchPlatformsPayload> {
  @override
  final Iterable<Type> types = const [
    PinwheelBillSwitchPlatformsPayload,
    _$PinwheelBillSwitchPlatformsPayload
  ];
  @override
  final String wireName = 'PinwheelBillSwitchPlatformsPayload';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PinwheelBillSwitchPlatformsPayload object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'platforms',
      serializers.serialize(object.platforms,
          specifiedType: const FullType(
              BuiltList, const [const FullType(PinwheelBillSwitchPlatform)])),
    ];

    return result;
  }

  @override
  PinwheelBillSwitchPlatformsPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PinwheelBillSwitchPlatformsPayloadBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'platforms':
          result.platforms.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(PinwheelBillSwitchPlatform)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$PinwheelExternalAccountConnectedPayloadSerializer
    implements StructuredSerializer<PinwheelExternalAccountConnectedPayload> {
  @override
  final Iterable<Type> types = const [
    PinwheelExternalAccountConnectedPayload,
    _$PinwheelExternalAccountConnectedPayload
  ];
  @override
  final String wireName = 'PinwheelExternalAccountConnectedPayload';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PinwheelExternalAccountConnectedPayload object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'institutionName',
      serializers.serialize(object.institutionName,
          specifiedType: const FullType(String)),
      'accountName',
      serializers.serialize(object.accountName,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  PinwheelExternalAccountConnectedPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PinwheelExternalAccountConnectedPayloadBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'institutionName':
          result.institutionName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'accountName':
          result.accountName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PinwheelCalendarSyncPayloadSerializer
    implements StructuredSerializer<PinwheelCalendarSyncPayload> {
  @override
  final Iterable<Type> types = const [
    PinwheelCalendarSyncPayload,
    _$PinwheelCalendarSyncPayload
  ];
  @override
  final String wireName = 'PinwheelCalendarSyncPayload';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PinwheelCalendarSyncPayload object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'calendarType',
      serializers.serialize(object.calendarType,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  PinwheelCalendarSyncPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PinwheelCalendarSyncPayloadBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'calendarType':
          result.calendarType = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PinwheelUserActivatedPayloadSerializer
    implements StructuredSerializer<PinwheelUserActivatedPayload> {
  @override
  final Iterable<Type> types = const [
    PinwheelUserActivatedPayload,
    _$PinwheelUserActivatedPayload
  ];
  @override
  final String wireName = 'PinwheelUserActivatedPayload';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PinwheelUserActivatedPayload object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'solutionName',
      serializers.serialize(object.solutionName,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  PinwheelUserActivatedPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PinwheelUserActivatedPayloadBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'solutionName':
          result.solutionName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

abstract class PinwheelEventPayloadBuilder {
  void replace(PinwheelEventPayload other);
  void update(void Function(PinwheelEventPayloadBuilder) updates);
}

class _$PinwheelAllocation extends PinwheelAllocation {
  @override
  final String type;
  @override
  final double? value;
  @override
  final PinwheelTarget? target;

  factory _$PinwheelAllocation(
          [void Function(PinwheelAllocationBuilder)? updates]) =>
      (PinwheelAllocationBuilder()..update(updates))._build();

  _$PinwheelAllocation._({required this.type, this.value, this.target})
      : super._();
  @override
  PinwheelAllocation rebuild(
          void Function(PinwheelAllocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelAllocationBuilder toBuilder() =>
      PinwheelAllocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PinwheelAllocation &&
        type == other.type &&
        value == other.value &&
        target == other.target;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, target.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PinwheelAllocation')
          ..add('type', type)
          ..add('value', value)
          ..add('target', target))
        .toString();
  }
}

class PinwheelAllocationBuilder
    implements
        Builder<PinwheelAllocation, PinwheelAllocationBuilder>,
        PinwheelEventPayloadBuilder {
  _$PinwheelAllocation? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  double? _value;
  double? get value => _$this._value;
  set value(covariant double? value) => _$this._value = value;

  PinwheelTargetBuilder? _target;
  PinwheelTargetBuilder get target =>
      _$this._target ??= PinwheelTargetBuilder();
  set target(covariant PinwheelTargetBuilder? target) =>
      _$this._target = target;

  PinwheelAllocationBuilder();

  PinwheelAllocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _value = $v.value;
      _target = $v.target?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PinwheelAllocation other) {
    _$v = other as _$PinwheelAllocation;
  }

  @override
  void update(void Function(PinwheelAllocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PinwheelAllocation build() => _build();

  _$PinwheelAllocation _build() {
    _$PinwheelAllocation _$result;
    try {
      _$result = _$v ??
          _$PinwheelAllocation._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'PinwheelAllocation', 'type'),
            value: value,
            target: _target?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'target';
        _target?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PinwheelAllocation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PinwheelTarget extends PinwheelTarget {
  @override
  final String accountType;
  @override
  final String? accountName;

  factory _$PinwheelTarget([void Function(PinwheelTargetBuilder)? updates]) =>
      (PinwheelTargetBuilder()..update(updates))._build();

  _$PinwheelTarget._({required this.accountType, this.accountName}) : super._();
  @override
  PinwheelTarget rebuild(void Function(PinwheelTargetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelTargetBuilder toBuilder() => PinwheelTargetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PinwheelTarget &&
        accountType == other.accountType &&
        accountName == other.accountName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountType.hashCode);
    _$hash = $jc(_$hash, accountName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PinwheelTarget')
          ..add('accountType', accountType)
          ..add('accountName', accountName))
        .toString();
  }
}

class PinwheelTargetBuilder
    implements
        Builder<PinwheelTarget, PinwheelTargetBuilder>,
        PinwheelEventPayloadBuilder {
  _$PinwheelTarget? _$v;

  String? _accountType;
  String? get accountType => _$this._accountType;
  set accountType(covariant String? accountType) =>
      _$this._accountType = accountType;

  String? _accountName;
  String? get accountName => _$this._accountName;
  set accountName(covariant String? accountName) =>
      _$this._accountName = accountName;

  PinwheelTargetBuilder();

  PinwheelTargetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountType = $v.accountType;
      _accountName = $v.accountName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PinwheelTarget other) {
    _$v = other as _$PinwheelTarget;
  }

  @override
  void update(void Function(PinwheelTargetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PinwheelTarget build() => _build();

  _$PinwheelTarget _build() {
    final _$result = _$v ??
        _$PinwheelTarget._(
          accountType: BuiltValueNullFieldError.checkNotNull(
              accountType, r'PinwheelTarget', 'accountType'),
          accountName: accountName,
        );
    replace(_$result);
    return _$result;
  }
}

class _$PinwheelInputAllocationPayload extends PinwheelInputAllocationPayload {
  @override
  final String? action;
  @override
  final PinwheelAllocation? allocation;

  factory _$PinwheelInputAllocationPayload(
          [void Function(PinwheelInputAllocationPayloadBuilder)? updates]) =>
      (PinwheelInputAllocationPayloadBuilder()..update(updates))._build();

  _$PinwheelInputAllocationPayload._({this.action, this.allocation})
      : super._();
  @override
  PinwheelInputAllocationPayload rebuild(
          void Function(PinwheelInputAllocationPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelInputAllocationPayloadBuilder toBuilder() =>
      PinwheelInputAllocationPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PinwheelInputAllocationPayload &&
        action == other.action &&
        allocation == other.allocation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, allocation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PinwheelInputAllocationPayload')
          ..add('action', action)
          ..add('allocation', allocation))
        .toString();
  }
}

class PinwheelInputAllocationPayloadBuilder
    implements
        Builder<PinwheelInputAllocationPayload,
            PinwheelInputAllocationPayloadBuilder>,
        PinwheelEventPayloadBuilder {
  _$PinwheelInputAllocationPayload? _$v;

  String? _action;
  String? get action => _$this._action;
  set action(covariant String? action) => _$this._action = action;

  PinwheelAllocationBuilder? _allocation;
  PinwheelAllocationBuilder get allocation =>
      _$this._allocation ??= PinwheelAllocationBuilder();
  set allocation(covariant PinwheelAllocationBuilder? allocation) =>
      _$this._allocation = allocation;

  PinwheelInputAllocationPayloadBuilder();

  PinwheelInputAllocationPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _action = $v.action;
      _allocation = $v.allocation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PinwheelInputAllocationPayload other) {
    _$v = other as _$PinwheelInputAllocationPayload;
  }

  @override
  void update(void Function(PinwheelInputAllocationPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PinwheelInputAllocationPayload build() => _build();

  _$PinwheelInputAllocationPayload _build() {
    _$PinwheelInputAllocationPayload _$result;
    try {
      _$result = _$v ??
          _$PinwheelInputAllocationPayload._(
            action: action,
            allocation: _allocation?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allocation';
        _allocation?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PinwheelInputAllocationPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PinwheelError extends PinwheelError {
  @override
  final String type;
  @override
  final String code;
  @override
  final String message;
  @override
  final bool pendingRetry;

  factory _$PinwheelError([void Function(PinwheelErrorBuilder)? updates]) =>
      (PinwheelErrorBuilder()..update(updates))._build();

  _$PinwheelError._(
      {required this.type,
      required this.code,
      required this.message,
      required this.pendingRetry})
      : super._();
  @override
  PinwheelError rebuild(void Function(PinwheelErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelErrorBuilder toBuilder() => PinwheelErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PinwheelError &&
        type == other.type &&
        code == other.code &&
        message == other.message &&
        pendingRetry == other.pendingRetry;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, pendingRetry.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PinwheelError')
          ..add('type', type)
          ..add('code', code)
          ..add('message', message)
          ..add('pendingRetry', pendingRetry))
        .toString();
  }
}

class PinwheelErrorBuilder
    implements
        Builder<PinwheelError, PinwheelErrorBuilder>,
        PinwheelEventPayloadBuilder {
  _$PinwheelError? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  String? _code;
  String? get code => _$this._code;
  set code(covariant String? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(covariant String? message) => _$this._message = message;

  bool? _pendingRetry;
  bool? get pendingRetry => _$this._pendingRetry;
  set pendingRetry(covariant bool? pendingRetry) =>
      _$this._pendingRetry = pendingRetry;

  PinwheelErrorBuilder();

  PinwheelErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _code = $v.code;
      _message = $v.message;
      _pendingRetry = $v.pendingRetry;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PinwheelError other) {
    _$v = other as _$PinwheelError;
  }

  @override
  void update(void Function(PinwheelErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PinwheelError build() => _build();

  _$PinwheelError _build() {
    final _$result = _$v ??
        _$PinwheelError._(
          type: BuiltValueNullFieldError.checkNotNull(
              type, r'PinwheelError', 'type'),
          code: BuiltValueNullFieldError.checkNotNull(
              code, r'PinwheelError', 'code'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'PinwheelError', 'message'),
          pendingRetry: BuiltValueNullFieldError.checkNotNull(
              pendingRetry, r'PinwheelError', 'pendingRetry'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$PinwheelExitPayload extends PinwheelExitPayload {
  @override
  final PinwheelError? error;

  factory _$PinwheelExitPayload(
          [void Function(PinwheelExitPayloadBuilder)? updates]) =>
      (PinwheelExitPayloadBuilder()..update(updates))._build();

  _$PinwheelExitPayload._({this.error}) : super._();
  @override
  PinwheelExitPayload rebuild(
          void Function(PinwheelExitPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelExitPayloadBuilder toBuilder() =>
      PinwheelExitPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PinwheelExitPayload && error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PinwheelExitPayload')
          ..add('error', error))
        .toString();
  }
}

class PinwheelExitPayloadBuilder
    implements
        Builder<PinwheelExitPayload, PinwheelExitPayloadBuilder>,
        PinwheelEventPayloadBuilder {
  _$PinwheelExitPayload? _$v;

  PinwheelErrorBuilder? _error;
  PinwheelErrorBuilder get error => _$this._error ??= PinwheelErrorBuilder();
  set error(covariant PinwheelErrorBuilder? error) => _$this._error = error;

  PinwheelExitPayloadBuilder();

  PinwheelExitPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PinwheelExitPayload other) {
    _$v = other as _$PinwheelExitPayload;
  }

  @override
  void update(void Function(PinwheelExitPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PinwheelExitPayload build() => _build();

  _$PinwheelExitPayload _build() {
    _$PinwheelExitPayload _$result;
    try {
      _$result = _$v ??
          _$PinwheelExitPayload._(
            error: _error?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'error';
        _error?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PinwheelExitPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PinwheelLoginPayload extends PinwheelLoginPayload {
  @override
  final String accountId;
  @override
  final String? platformId;

  factory _$PinwheelLoginPayload(
          [void Function(PinwheelLoginPayloadBuilder)? updates]) =>
      (PinwheelLoginPayloadBuilder()..update(updates))._build();

  _$PinwheelLoginPayload._({required this.accountId, this.platformId})
      : super._();
  @override
  PinwheelLoginPayload rebuild(
          void Function(PinwheelLoginPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelLoginPayloadBuilder toBuilder() =>
      PinwheelLoginPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PinwheelLoginPayload &&
        accountId == other.accountId &&
        platformId == other.platformId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, platformId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PinwheelLoginPayload')
          ..add('accountId', accountId)
          ..add('platformId', platformId))
        .toString();
  }
}

class PinwheelLoginPayloadBuilder
    implements
        Builder<PinwheelLoginPayload, PinwheelLoginPayloadBuilder>,
        PinwheelEventPayloadBuilder {
  _$PinwheelLoginPayload? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(covariant String? accountId) => _$this._accountId = accountId;

  String? _platformId;
  String? get platformId => _$this._platformId;
  set platformId(covariant String? platformId) =>
      _$this._platformId = platformId;

  PinwheelLoginPayloadBuilder();

  PinwheelLoginPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _platformId = $v.platformId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PinwheelLoginPayload other) {
    _$v = other as _$PinwheelLoginPayload;
  }

  @override
  void update(void Function(PinwheelLoginPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PinwheelLoginPayload build() => _build();

  _$PinwheelLoginPayload _build() {
    final _$result = _$v ??
        _$PinwheelLoginPayload._(
          accountId: BuiltValueNullFieldError.checkNotNull(
              accountId, r'PinwheelLoginPayload', 'accountId'),
          platformId: platformId,
        );
    replace(_$result);
    return _$result;
  }
}

class _$PinwheelLoginAttemptPayload extends PinwheelLoginAttemptPayload {
  @override
  final String platformId;

  factory _$PinwheelLoginAttemptPayload(
          [void Function(PinwheelLoginAttemptPayloadBuilder)? updates]) =>
      (PinwheelLoginAttemptPayloadBuilder()..update(updates))._build();

  _$PinwheelLoginAttemptPayload._({required this.platformId}) : super._();
  @override
  PinwheelLoginAttemptPayload rebuild(
          void Function(PinwheelLoginAttemptPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelLoginAttemptPayloadBuilder toBuilder() =>
      PinwheelLoginAttemptPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PinwheelLoginAttemptPayload &&
        platformId == other.platformId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, platformId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PinwheelLoginAttemptPayload')
          ..add('platformId', platformId))
        .toString();
  }
}

class PinwheelLoginAttemptPayloadBuilder
    implements
        Builder<PinwheelLoginAttemptPayload,
            PinwheelLoginAttemptPayloadBuilder>,
        PinwheelEventPayloadBuilder {
  _$PinwheelLoginAttemptPayload? _$v;

  String? _platformId;
  String? get platformId => _$this._platformId;
  set platformId(covariant String? platformId) =>
      _$this._platformId = platformId;

  PinwheelLoginAttemptPayloadBuilder();

  PinwheelLoginAttemptPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _platformId = $v.platformId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PinwheelLoginAttemptPayload other) {
    _$v = other as _$PinwheelLoginAttemptPayload;
  }

  @override
  void update(void Function(PinwheelLoginAttemptPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PinwheelLoginAttemptPayload build() => _build();

  _$PinwheelLoginAttemptPayload _build() {
    final _$result = _$v ??
        _$PinwheelLoginAttemptPayload._(
          platformId: BuiltValueNullFieldError.checkNotNull(
              platformId, r'PinwheelLoginAttemptPayload', 'platformId'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$PinwheelParams extends PinwheelParams {
  @override
  final String? action;
  @override
  final PinwheelAllocation? allocation;

  factory _$PinwheelParams([void Function(PinwheelParamsBuilder)? updates]) =>
      (PinwheelParamsBuilder()..update(updates))._build();

  _$PinwheelParams._({this.action, this.allocation}) : super._();
  @override
  PinwheelParams rebuild(void Function(PinwheelParamsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelParamsBuilder toBuilder() => PinwheelParamsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PinwheelParams &&
        action == other.action &&
        allocation == other.allocation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, allocation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PinwheelParams')
          ..add('action', action)
          ..add('allocation', allocation))
        .toString();
  }
}

class PinwheelParamsBuilder
    implements
        Builder<PinwheelParams, PinwheelParamsBuilder>,
        PinwheelEventPayloadBuilder {
  _$PinwheelParams? _$v;

  String? _action;
  String? get action => _$this._action;
  set action(covariant String? action) => _$this._action = action;

  PinwheelAllocationBuilder? _allocation;
  PinwheelAllocationBuilder get allocation =>
      _$this._allocation ??= PinwheelAllocationBuilder();
  set allocation(covariant PinwheelAllocationBuilder? allocation) =>
      _$this._allocation = allocation;

  PinwheelParamsBuilder();

  PinwheelParamsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _action = $v.action;
      _allocation = $v.allocation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PinwheelParams other) {
    _$v = other as _$PinwheelParams;
  }

  @override
  void update(void Function(PinwheelParamsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PinwheelParams build() => _build();

  _$PinwheelParams _build() {
    _$PinwheelParams _$result;
    try {
      _$result = _$v ??
          _$PinwheelParams._(
            action: action,
            allocation: _allocation?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allocation';
        _allocation?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PinwheelParams', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PinwheelSelectedEmployerPayload
    extends PinwheelSelectedEmployerPayload {
  @override
  final String selectedEmployerId;
  @override
  final String selectedEmployerName;

  factory _$PinwheelSelectedEmployerPayload(
          [void Function(PinwheelSelectedEmployerPayloadBuilder)? updates]) =>
      (PinwheelSelectedEmployerPayloadBuilder()..update(updates))._build();

  _$PinwheelSelectedEmployerPayload._(
      {required this.selectedEmployerId, required this.selectedEmployerName})
      : super._();
  @override
  PinwheelSelectedEmployerPayload rebuild(
          void Function(PinwheelSelectedEmployerPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelSelectedEmployerPayloadBuilder toBuilder() =>
      PinwheelSelectedEmployerPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PinwheelSelectedEmployerPayload &&
        selectedEmployerId == other.selectedEmployerId &&
        selectedEmployerName == other.selectedEmployerName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, selectedEmployerId.hashCode);
    _$hash = $jc(_$hash, selectedEmployerName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PinwheelSelectedEmployerPayload')
          ..add('selectedEmployerId', selectedEmployerId)
          ..add('selectedEmployerName', selectedEmployerName))
        .toString();
  }
}

class PinwheelSelectedEmployerPayloadBuilder
    implements
        Builder<PinwheelSelectedEmployerPayload,
            PinwheelSelectedEmployerPayloadBuilder>,
        PinwheelEventPayloadBuilder {
  _$PinwheelSelectedEmployerPayload? _$v;

  String? _selectedEmployerId;
  String? get selectedEmployerId => _$this._selectedEmployerId;
  set selectedEmployerId(covariant String? selectedEmployerId) =>
      _$this._selectedEmployerId = selectedEmployerId;

  String? _selectedEmployerName;
  String? get selectedEmployerName => _$this._selectedEmployerName;
  set selectedEmployerName(covariant String? selectedEmployerName) =>
      _$this._selectedEmployerName = selectedEmployerName;

  PinwheelSelectedEmployerPayloadBuilder();

  PinwheelSelectedEmployerPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _selectedEmployerId = $v.selectedEmployerId;
      _selectedEmployerName = $v.selectedEmployerName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PinwheelSelectedEmployerPayload other) {
    _$v = other as _$PinwheelSelectedEmployerPayload;
  }

  @override
  void update(void Function(PinwheelSelectedEmployerPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PinwheelSelectedEmployerPayload build() => _build();

  _$PinwheelSelectedEmployerPayload _build() {
    final _$result = _$v ??
        _$PinwheelSelectedEmployerPayload._(
          selectedEmployerId: BuiltValueNullFieldError.checkNotNull(
              selectedEmployerId,
              r'PinwheelSelectedEmployerPayload',
              'selectedEmployerId'),
          selectedEmployerName: BuiltValueNullFieldError.checkNotNull(
              selectedEmployerName,
              r'PinwheelSelectedEmployerPayload',
              'selectedEmployerName'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$PinwheelSelectedPlatformPayload
    extends PinwheelSelectedPlatformPayload {
  @override
  final String selectedPlatformId;
  @override
  final String selectedPlatformName;

  factory _$PinwheelSelectedPlatformPayload(
          [void Function(PinwheelSelectedPlatformPayloadBuilder)? updates]) =>
      (PinwheelSelectedPlatformPayloadBuilder()..update(updates))._build();

  _$PinwheelSelectedPlatformPayload._(
      {required this.selectedPlatformId, required this.selectedPlatformName})
      : super._();
  @override
  PinwheelSelectedPlatformPayload rebuild(
          void Function(PinwheelSelectedPlatformPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelSelectedPlatformPayloadBuilder toBuilder() =>
      PinwheelSelectedPlatformPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PinwheelSelectedPlatformPayload &&
        selectedPlatformId == other.selectedPlatformId &&
        selectedPlatformName == other.selectedPlatformName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, selectedPlatformId.hashCode);
    _$hash = $jc(_$hash, selectedPlatformName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PinwheelSelectedPlatformPayload')
          ..add('selectedPlatformId', selectedPlatformId)
          ..add('selectedPlatformName', selectedPlatformName))
        .toString();
  }
}

class PinwheelSelectedPlatformPayloadBuilder
    implements
        Builder<PinwheelSelectedPlatformPayload,
            PinwheelSelectedPlatformPayloadBuilder>,
        PinwheelEventPayloadBuilder {
  _$PinwheelSelectedPlatformPayload? _$v;

  String? _selectedPlatformId;
  String? get selectedPlatformId => _$this._selectedPlatformId;
  set selectedPlatformId(covariant String? selectedPlatformId) =>
      _$this._selectedPlatformId = selectedPlatformId;

  String? _selectedPlatformName;
  String? get selectedPlatformName => _$this._selectedPlatformName;
  set selectedPlatformName(covariant String? selectedPlatformName) =>
      _$this._selectedPlatformName = selectedPlatformName;

  PinwheelSelectedPlatformPayloadBuilder();

  PinwheelSelectedPlatformPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _selectedPlatformId = $v.selectedPlatformId;
      _selectedPlatformName = $v.selectedPlatformName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PinwheelSelectedPlatformPayload other) {
    _$v = other as _$PinwheelSelectedPlatformPayload;
  }

  @override
  void update(void Function(PinwheelSelectedPlatformPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PinwheelSelectedPlatformPayload build() => _build();

  _$PinwheelSelectedPlatformPayload _build() {
    final _$result = _$v ??
        _$PinwheelSelectedPlatformPayload._(
          selectedPlatformId: BuiltValueNullFieldError.checkNotNull(
              selectedPlatformId,
              r'PinwheelSelectedPlatformPayload',
              'selectedPlatformId'),
          selectedPlatformName: BuiltValueNullFieldError.checkNotNull(
              selectedPlatformName,
              r'PinwheelSelectedPlatformPayload',
              'selectedPlatformName'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$PinwheelSuccessPayload extends PinwheelSuccessPayload {
  @override
  final String accountId;
  @override
  final String platformId;
  @override
  final String job;
  @override
  final PinwheelParams? params;

  factory _$PinwheelSuccessPayload(
          [void Function(PinwheelSuccessPayloadBuilder)? updates]) =>
      (PinwheelSuccessPayloadBuilder()..update(updates))._build();

  _$PinwheelSuccessPayload._(
      {required this.accountId,
      required this.platformId,
      required this.job,
      this.params})
      : super._();
  @override
  PinwheelSuccessPayload rebuild(
          void Function(PinwheelSuccessPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelSuccessPayloadBuilder toBuilder() =>
      PinwheelSuccessPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PinwheelSuccessPayload &&
        accountId == other.accountId &&
        platformId == other.platformId &&
        job == other.job &&
        params == other.params;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, platformId.hashCode);
    _$hash = $jc(_$hash, job.hashCode);
    _$hash = $jc(_$hash, params.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PinwheelSuccessPayload')
          ..add('accountId', accountId)
          ..add('platformId', platformId)
          ..add('job', job)
          ..add('params', params))
        .toString();
  }
}

class PinwheelSuccessPayloadBuilder
    implements
        Builder<PinwheelSuccessPayload, PinwheelSuccessPayloadBuilder>,
        PinwheelEventPayloadBuilder {
  _$PinwheelSuccessPayload? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(covariant String? accountId) => _$this._accountId = accountId;

  String? _platformId;
  String? get platformId => _$this._platformId;
  set platformId(covariant String? platformId) =>
      _$this._platformId = platformId;

  String? _job;
  String? get job => _$this._job;
  set job(covariant String? job) => _$this._job = job;

  PinwheelParamsBuilder? _params;
  PinwheelParamsBuilder get params =>
      _$this._params ??= PinwheelParamsBuilder();
  set params(covariant PinwheelParamsBuilder? params) =>
      _$this._params = params;

  PinwheelSuccessPayloadBuilder();

  PinwheelSuccessPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _platformId = $v.platformId;
      _job = $v.job;
      _params = $v.params?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PinwheelSuccessPayload other) {
    _$v = other as _$PinwheelSuccessPayload;
  }

  @override
  void update(void Function(PinwheelSuccessPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PinwheelSuccessPayload build() => _build();

  _$PinwheelSuccessPayload _build() {
    _$PinwheelSuccessPayload _$result;
    try {
      _$result = _$v ??
          _$PinwheelSuccessPayload._(
            accountId: BuiltValueNullFieldError.checkNotNull(
                accountId, r'PinwheelSuccessPayload', 'accountId'),
            platformId: BuiltValueNullFieldError.checkNotNull(
                platformId, r'PinwheelSuccessPayload', 'platformId'),
            job: BuiltValueNullFieldError.checkNotNull(
                job, r'PinwheelSuccessPayload', 'job'),
            params: _params?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'params';
        _params?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PinwheelSuccessPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PinwheelEventChannelArgument extends PinwheelEventChannelArgument {
  @override
  final String name;
  @override
  final String? payload;

  factory _$PinwheelEventChannelArgument(
          [void Function(PinwheelEventChannelArgumentBuilder)? updates]) =>
      (PinwheelEventChannelArgumentBuilder()..update(updates))._build();

  _$PinwheelEventChannelArgument._({required this.name, this.payload})
      : super._();
  @override
  PinwheelEventChannelArgument rebuild(
          void Function(PinwheelEventChannelArgumentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelEventChannelArgumentBuilder toBuilder() =>
      PinwheelEventChannelArgumentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PinwheelEventChannelArgument &&
        name == other.name &&
        payload == other.payload;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, payload.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PinwheelEventChannelArgument')
          ..add('name', name)
          ..add('payload', payload))
        .toString();
  }
}

class PinwheelEventChannelArgumentBuilder
    implements
        Builder<PinwheelEventChannelArgument,
            PinwheelEventChannelArgumentBuilder> {
  _$PinwheelEventChannelArgument? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _payload;
  String? get payload => _$this._payload;
  set payload(String? payload) => _$this._payload = payload;

  PinwheelEventChannelArgumentBuilder();

  PinwheelEventChannelArgumentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _payload = $v.payload;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PinwheelEventChannelArgument other) {
    _$v = other as _$PinwheelEventChannelArgument;
  }

  @override
  void update(void Function(PinwheelEventChannelArgumentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PinwheelEventChannelArgument build() => _build();

  _$PinwheelEventChannelArgument _build() {
    final _$result = _$v ??
        _$PinwheelEventChannelArgument._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'PinwheelEventChannelArgument', 'name'),
          payload: payload,
        );
    replace(_$result);
    return _$result;
  }
}

class _$PinwheelDDFormCreatePayload extends PinwheelDDFormCreatePayload {
  @override
  final String url;

  factory _$PinwheelDDFormCreatePayload(
          [void Function(PinwheelDDFormCreatePayloadBuilder)? updates]) =>
      (PinwheelDDFormCreatePayloadBuilder()..update(updates))._build();

  _$PinwheelDDFormCreatePayload._({required this.url}) : super._();
  @override
  PinwheelDDFormCreatePayload rebuild(
          void Function(PinwheelDDFormCreatePayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelDDFormCreatePayloadBuilder toBuilder() =>
      PinwheelDDFormCreatePayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PinwheelDDFormCreatePayload && url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PinwheelDDFormCreatePayload')
          ..add('url', url))
        .toString();
  }
}

class PinwheelDDFormCreatePayloadBuilder
    implements
        Builder<PinwheelDDFormCreatePayload,
            PinwheelDDFormCreatePayloadBuilder>,
        PinwheelEventPayloadBuilder {
  _$PinwheelDDFormCreatePayload? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(covariant String? url) => _$this._url = url;

  PinwheelDDFormCreatePayloadBuilder();

  PinwheelDDFormCreatePayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PinwheelDDFormCreatePayload other) {
    _$v = other as _$PinwheelDDFormCreatePayload;
  }

  @override
  void update(void Function(PinwheelDDFormCreatePayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PinwheelDDFormCreatePayload build() => _build();

  _$PinwheelDDFormCreatePayload _build() {
    final _$result = _$v ??
        _$PinwheelDDFormCreatePayload._(
          url: BuiltValueNullFieldError.checkNotNull(
              url, r'PinwheelDDFormCreatePayload', 'url'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$PinwheelScreenTransitionPayload
    extends PinwheelScreenTransitionPayload {
  @override
  final String screenName;
  @override
  final String? selectedEmployerId;
  @override
  final String? selectedEmployerName;
  @override
  final String? selectedPlatformId;
  @override
  final String? selectedPlatformName;

  factory _$PinwheelScreenTransitionPayload(
          [void Function(PinwheelScreenTransitionPayloadBuilder)? updates]) =>
      (PinwheelScreenTransitionPayloadBuilder()..update(updates))._build();

  _$PinwheelScreenTransitionPayload._(
      {required this.screenName,
      this.selectedEmployerId,
      this.selectedEmployerName,
      this.selectedPlatformId,
      this.selectedPlatformName})
      : super._();
  @override
  PinwheelScreenTransitionPayload rebuild(
          void Function(PinwheelScreenTransitionPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelScreenTransitionPayloadBuilder toBuilder() =>
      PinwheelScreenTransitionPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PinwheelScreenTransitionPayload &&
        screenName == other.screenName &&
        selectedEmployerId == other.selectedEmployerId &&
        selectedEmployerName == other.selectedEmployerName &&
        selectedPlatformId == other.selectedPlatformId &&
        selectedPlatformName == other.selectedPlatformName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, screenName.hashCode);
    _$hash = $jc(_$hash, selectedEmployerId.hashCode);
    _$hash = $jc(_$hash, selectedEmployerName.hashCode);
    _$hash = $jc(_$hash, selectedPlatformId.hashCode);
    _$hash = $jc(_$hash, selectedPlatformName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PinwheelScreenTransitionPayload')
          ..add('screenName', screenName)
          ..add('selectedEmployerId', selectedEmployerId)
          ..add('selectedEmployerName', selectedEmployerName)
          ..add('selectedPlatformId', selectedPlatformId)
          ..add('selectedPlatformName', selectedPlatformName))
        .toString();
  }
}

class PinwheelScreenTransitionPayloadBuilder
    implements
        Builder<PinwheelScreenTransitionPayload,
            PinwheelScreenTransitionPayloadBuilder>,
        PinwheelEventPayloadBuilder {
  _$PinwheelScreenTransitionPayload? _$v;

  String? _screenName;
  String? get screenName => _$this._screenName;
  set screenName(covariant String? screenName) =>
      _$this._screenName = screenName;

  String? _selectedEmployerId;
  String? get selectedEmployerId => _$this._selectedEmployerId;
  set selectedEmployerId(covariant String? selectedEmployerId) =>
      _$this._selectedEmployerId = selectedEmployerId;

  String? _selectedEmployerName;
  String? get selectedEmployerName => _$this._selectedEmployerName;
  set selectedEmployerName(covariant String? selectedEmployerName) =>
      _$this._selectedEmployerName = selectedEmployerName;

  String? _selectedPlatformId;
  String? get selectedPlatformId => _$this._selectedPlatformId;
  set selectedPlatformId(covariant String? selectedPlatformId) =>
      _$this._selectedPlatformId = selectedPlatformId;

  String? _selectedPlatformName;
  String? get selectedPlatformName => _$this._selectedPlatformName;
  set selectedPlatformName(covariant String? selectedPlatformName) =>
      _$this._selectedPlatformName = selectedPlatformName;

  PinwheelScreenTransitionPayloadBuilder();

  PinwheelScreenTransitionPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _screenName = $v.screenName;
      _selectedEmployerId = $v.selectedEmployerId;
      _selectedEmployerName = $v.selectedEmployerName;
      _selectedPlatformId = $v.selectedPlatformId;
      _selectedPlatformName = $v.selectedPlatformName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PinwheelScreenTransitionPayload other) {
    _$v = other as _$PinwheelScreenTransitionPayload;
  }

  @override
  void update(void Function(PinwheelScreenTransitionPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PinwheelScreenTransitionPayload build() => _build();

  _$PinwheelScreenTransitionPayload _build() {
    final _$result = _$v ??
        _$PinwheelScreenTransitionPayload._(
          screenName: BuiltValueNullFieldError.checkNotNull(
              screenName, r'PinwheelScreenTransitionPayload', 'screenName'),
          selectedEmployerId: selectedEmployerId,
          selectedEmployerName: selectedEmployerName,
          selectedPlatformId: selectedPlatformId,
          selectedPlatformName: selectedPlatformName,
        );
    replace(_$result);
    return _$result;
  }
}

class _$PinwheelOtherEventPayloadItem extends PinwheelOtherEventPayloadItem {
  @override
  final String key;
  @override
  final String value;
  @override
  final PinwheelOtherEventPayloadValueType type;

  factory _$PinwheelOtherEventPayloadItem(
          [void Function(PinwheelOtherEventPayloadItemBuilder)? updates]) =>
      (PinwheelOtherEventPayloadItemBuilder()..update(updates))._build();

  _$PinwheelOtherEventPayloadItem._(
      {required this.key, required this.value, required this.type})
      : super._();
  @override
  PinwheelOtherEventPayloadItem rebuild(
          void Function(PinwheelOtherEventPayloadItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelOtherEventPayloadItemBuilder toBuilder() =>
      PinwheelOtherEventPayloadItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PinwheelOtherEventPayloadItem &&
        key == other.key &&
        value == other.value &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PinwheelOtherEventPayloadItem')
          ..add('key', key)
          ..add('value', value)
          ..add('type', type))
        .toString();
  }
}

class PinwheelOtherEventPayloadItemBuilder
    implements
        Builder<PinwheelOtherEventPayloadItem,
            PinwheelOtherEventPayloadItemBuilder> {
  _$PinwheelOtherEventPayloadItem? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  PinwheelOtherEventPayloadValueType? _type;
  PinwheelOtherEventPayloadValueType? get type => _$this._type;
  set type(PinwheelOtherEventPayloadValueType? type) => _$this._type = type;

  PinwheelOtherEventPayloadItemBuilder();

  PinwheelOtherEventPayloadItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _value = $v.value;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PinwheelOtherEventPayloadItem other) {
    _$v = other as _$PinwheelOtherEventPayloadItem;
  }

  @override
  void update(void Function(PinwheelOtherEventPayloadItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PinwheelOtherEventPayloadItem build() => _build();

  _$PinwheelOtherEventPayloadItem _build() {
    final _$result = _$v ??
        _$PinwheelOtherEventPayloadItem._(
          key: BuiltValueNullFieldError.checkNotNull(
              key, r'PinwheelOtherEventPayloadItem', 'key'),
          value: BuiltValueNullFieldError.checkNotNull(
              value, r'PinwheelOtherEventPayloadItem', 'value'),
          type: BuiltValueNullFieldError.checkNotNull(
              type, r'PinwheelOtherEventPayloadItem', 'type'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$PinwheelOtherEventPayload extends PinwheelOtherEventPayload {
  @override
  final String name;
  @override
  final BuiltList<PinwheelOtherEventPayloadItem> payload;

  factory _$PinwheelOtherEventPayload(
          [void Function(PinwheelOtherEventPayloadBuilder)? updates]) =>
      (PinwheelOtherEventPayloadBuilder()..update(updates))._build();

  _$PinwheelOtherEventPayload._({required this.name, required this.payload})
      : super._();
  @override
  PinwheelOtherEventPayload rebuild(
          void Function(PinwheelOtherEventPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelOtherEventPayloadBuilder toBuilder() =>
      PinwheelOtherEventPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PinwheelOtherEventPayload &&
        name == other.name &&
        payload == other.payload;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, payload.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PinwheelOtherEventPayload')
          ..add('name', name)
          ..add('payload', payload))
        .toString();
  }
}

class PinwheelOtherEventPayloadBuilder
    implements
        Builder<PinwheelOtherEventPayload, PinwheelOtherEventPayloadBuilder>,
        PinwheelEventPayloadBuilder {
  _$PinwheelOtherEventPayload? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  ListBuilder<PinwheelOtherEventPayloadItem>? _payload;
  ListBuilder<PinwheelOtherEventPayloadItem> get payload =>
      _$this._payload ??= ListBuilder<PinwheelOtherEventPayloadItem>();
  set payload(covariant ListBuilder<PinwheelOtherEventPayloadItem>? payload) =>
      _$this._payload = payload;

  PinwheelOtherEventPayloadBuilder();

  PinwheelOtherEventPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _payload = $v.payload.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PinwheelOtherEventPayload other) {
    _$v = other as _$PinwheelOtherEventPayload;
  }

  @override
  void update(void Function(PinwheelOtherEventPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PinwheelOtherEventPayload build() => _build();

  _$PinwheelOtherEventPayload _build() {
    _$PinwheelOtherEventPayload _$result;
    try {
      _$result = _$v ??
          _$PinwheelOtherEventPayload._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'PinwheelOtherEventPayload', 'name'),
            payload: payload.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'payload';
        payload.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PinwheelOtherEventPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PinwheelDocumentUploadsBeginPayload
    extends PinwheelDocumentUploadsBeginPayload {
  @override
  final int? uploadedDocumentsSubmittedCount;

  factory _$PinwheelDocumentUploadsBeginPayload(
          [void Function(PinwheelDocumentUploadsBeginPayloadBuilder)?
              updates]) =>
      (PinwheelDocumentUploadsBeginPayloadBuilder()..update(updates))._build();

  _$PinwheelDocumentUploadsBeginPayload._(
      {this.uploadedDocumentsSubmittedCount})
      : super._();
  @override
  PinwheelDocumentUploadsBeginPayload rebuild(
          void Function(PinwheelDocumentUploadsBeginPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelDocumentUploadsBeginPayloadBuilder toBuilder() =>
      PinwheelDocumentUploadsBeginPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PinwheelDocumentUploadsBeginPayload &&
        uploadedDocumentsSubmittedCount ==
            other.uploadedDocumentsSubmittedCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uploadedDocumentsSubmittedCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PinwheelDocumentUploadsBeginPayload')
          ..add('uploadedDocumentsSubmittedCount',
              uploadedDocumentsSubmittedCount))
        .toString();
  }
}

class PinwheelDocumentUploadsBeginPayloadBuilder
    implements
        Builder<PinwheelDocumentUploadsBeginPayload,
            PinwheelDocumentUploadsBeginPayloadBuilder>,
        PinwheelEventPayloadBuilder {
  _$PinwheelDocumentUploadsBeginPayload? _$v;

  int? _uploadedDocumentsSubmittedCount;
  int? get uploadedDocumentsSubmittedCount =>
      _$this._uploadedDocumentsSubmittedCount;
  set uploadedDocumentsSubmittedCount(
          covariant int? uploadedDocumentsSubmittedCount) =>
      _$this._uploadedDocumentsSubmittedCount = uploadedDocumentsSubmittedCount;

  PinwheelDocumentUploadsBeginPayloadBuilder();

  PinwheelDocumentUploadsBeginPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uploadedDocumentsSubmittedCount = $v.uploadedDocumentsSubmittedCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PinwheelDocumentUploadsBeginPayload other) {
    _$v = other as _$PinwheelDocumentUploadsBeginPayload;
  }

  @override
  void update(
      void Function(PinwheelDocumentUploadsBeginPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PinwheelDocumentUploadsBeginPayload build() => _build();

  _$PinwheelDocumentUploadsBeginPayload _build() {
    final _$result = _$v ??
        _$PinwheelDocumentUploadsBeginPayload._(
          uploadedDocumentsSubmittedCount: uploadedDocumentsSubmittedCount,
        );
    replace(_$result);
    return _$result;
  }
}

class _$PinwheelDocumentUploadsSubmittedPayload
    extends PinwheelDocumentUploadsSubmittedPayload {
  @override
  final int uploadedDocumentSubmittedCount;

  factory _$PinwheelDocumentUploadsSubmittedPayload(
          [void Function(PinwheelDocumentUploadsSubmittedPayloadBuilder)?
              updates]) =>
      (PinwheelDocumentUploadsSubmittedPayloadBuilder()..update(updates))
          ._build();

  _$PinwheelDocumentUploadsSubmittedPayload._(
      {required this.uploadedDocumentSubmittedCount})
      : super._();
  @override
  PinwheelDocumentUploadsSubmittedPayload rebuild(
          void Function(PinwheelDocumentUploadsSubmittedPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelDocumentUploadsSubmittedPayloadBuilder toBuilder() =>
      PinwheelDocumentUploadsSubmittedPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PinwheelDocumentUploadsSubmittedPayload &&
        uploadedDocumentSubmittedCount == other.uploadedDocumentSubmittedCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uploadedDocumentSubmittedCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PinwheelDocumentUploadsSubmittedPayload')
          ..add(
              'uploadedDocumentSubmittedCount', uploadedDocumentSubmittedCount))
        .toString();
  }
}

class PinwheelDocumentUploadsSubmittedPayloadBuilder
    implements
        Builder<PinwheelDocumentUploadsSubmittedPayload,
            PinwheelDocumentUploadsSubmittedPayloadBuilder>,
        PinwheelEventPayloadBuilder {
  _$PinwheelDocumentUploadsSubmittedPayload? _$v;

  int? _uploadedDocumentSubmittedCount;
  int? get uploadedDocumentSubmittedCount =>
      _$this._uploadedDocumentSubmittedCount;
  set uploadedDocumentSubmittedCount(
          covariant int? uploadedDocumentSubmittedCount) =>
      _$this._uploadedDocumentSubmittedCount = uploadedDocumentSubmittedCount;

  PinwheelDocumentUploadsSubmittedPayloadBuilder();

  PinwheelDocumentUploadsSubmittedPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uploadedDocumentSubmittedCount = $v.uploadedDocumentSubmittedCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PinwheelDocumentUploadsSubmittedPayload other) {
    _$v = other as _$PinwheelDocumentUploadsSubmittedPayload;
  }

  @override
  void update(
      void Function(PinwheelDocumentUploadsSubmittedPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PinwheelDocumentUploadsSubmittedPayload build() => _build();

  _$PinwheelDocumentUploadsSubmittedPayload _build() {
    final _$result = _$v ??
        _$PinwheelDocumentUploadsSubmittedPayload._(
          uploadedDocumentSubmittedCount: BuiltValueNullFieldError.checkNotNull(
              uploadedDocumentSubmittedCount,
              r'PinwheelDocumentUploadsSubmittedPayload',
              'uploadedDocumentSubmittedCount'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$PinwheelBillSwitchPayload extends PinwheelBillSwitchPayload {
  @override
  final String platformId;
  @override
  final String platformName;
  @override
  final bool isIntegratedSwitch;
  @override
  final String frequency;
  @override
  final String nextPaymentDate;
  @override
  final int amountCents;
  @override
  final String? accountId;

  factory _$PinwheelBillSwitchPayload(
          [void Function(PinwheelBillSwitchPayloadBuilder)? updates]) =>
      (PinwheelBillSwitchPayloadBuilder()..update(updates))._build();

  _$PinwheelBillSwitchPayload._(
      {required this.platformId,
      required this.platformName,
      required this.isIntegratedSwitch,
      required this.frequency,
      required this.nextPaymentDate,
      required this.amountCents,
      this.accountId})
      : super._();
  @override
  PinwheelBillSwitchPayload rebuild(
          void Function(PinwheelBillSwitchPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelBillSwitchPayloadBuilder toBuilder() =>
      PinwheelBillSwitchPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PinwheelBillSwitchPayload &&
        platformId == other.platformId &&
        platformName == other.platformName &&
        isIntegratedSwitch == other.isIntegratedSwitch &&
        frequency == other.frequency &&
        nextPaymentDate == other.nextPaymentDate &&
        amountCents == other.amountCents &&
        accountId == other.accountId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, platformId.hashCode);
    _$hash = $jc(_$hash, platformName.hashCode);
    _$hash = $jc(_$hash, isIntegratedSwitch.hashCode);
    _$hash = $jc(_$hash, frequency.hashCode);
    _$hash = $jc(_$hash, nextPaymentDate.hashCode);
    _$hash = $jc(_$hash, amountCents.hashCode);
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PinwheelBillSwitchPayload')
          ..add('platformId', platformId)
          ..add('platformName', platformName)
          ..add('isIntegratedSwitch', isIntegratedSwitch)
          ..add('frequency', frequency)
          ..add('nextPaymentDate', nextPaymentDate)
          ..add('amountCents', amountCents)
          ..add('accountId', accountId))
        .toString();
  }
}

class PinwheelBillSwitchPayloadBuilder
    implements
        Builder<PinwheelBillSwitchPayload, PinwheelBillSwitchPayloadBuilder>,
        PinwheelEventPayloadBuilder {
  _$PinwheelBillSwitchPayload? _$v;

  String? _platformId;
  String? get platformId => _$this._platformId;
  set platformId(covariant String? platformId) =>
      _$this._platformId = platformId;

  String? _platformName;
  String? get platformName => _$this._platformName;
  set platformName(covariant String? platformName) =>
      _$this._platformName = platformName;

  bool? _isIntegratedSwitch;
  bool? get isIntegratedSwitch => _$this._isIntegratedSwitch;
  set isIntegratedSwitch(covariant bool? isIntegratedSwitch) =>
      _$this._isIntegratedSwitch = isIntegratedSwitch;

  String? _frequency;
  String? get frequency => _$this._frequency;
  set frequency(covariant String? frequency) => _$this._frequency = frequency;

  String? _nextPaymentDate;
  String? get nextPaymentDate => _$this._nextPaymentDate;
  set nextPaymentDate(covariant String? nextPaymentDate) =>
      _$this._nextPaymentDate = nextPaymentDate;

  int? _amountCents;
  int? get amountCents => _$this._amountCents;
  set amountCents(covariant int? amountCents) =>
      _$this._amountCents = amountCents;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(covariant String? accountId) => _$this._accountId = accountId;

  PinwheelBillSwitchPayloadBuilder();

  PinwheelBillSwitchPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _platformId = $v.platformId;
      _platformName = $v.platformName;
      _isIntegratedSwitch = $v.isIntegratedSwitch;
      _frequency = $v.frequency;
      _nextPaymentDate = $v.nextPaymentDate;
      _amountCents = $v.amountCents;
      _accountId = $v.accountId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PinwheelBillSwitchPayload other) {
    _$v = other as _$PinwheelBillSwitchPayload;
  }

  @override
  void update(void Function(PinwheelBillSwitchPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PinwheelBillSwitchPayload build() => _build();

  _$PinwheelBillSwitchPayload _build() {
    final _$result = _$v ??
        _$PinwheelBillSwitchPayload._(
          platformId: BuiltValueNullFieldError.checkNotNull(
              platformId, r'PinwheelBillSwitchPayload', 'platformId'),
          platformName: BuiltValueNullFieldError.checkNotNull(
              platformName, r'PinwheelBillSwitchPayload', 'platformName'),
          isIntegratedSwitch: BuiltValueNullFieldError.checkNotNull(
              isIntegratedSwitch,
              r'PinwheelBillSwitchPayload',
              'isIntegratedSwitch'),
          frequency: BuiltValueNullFieldError.checkNotNull(
              frequency, r'PinwheelBillSwitchPayload', 'frequency'),
          nextPaymentDate: BuiltValueNullFieldError.checkNotNull(
              nextPaymentDate, r'PinwheelBillSwitchPayload', 'nextPaymentDate'),
          amountCents: BuiltValueNullFieldError.checkNotNull(
              amountCents, r'PinwheelBillSwitchPayload', 'amountCents'),
          accountId: accountId,
        );
    replace(_$result);
    return _$result;
  }
}

class _$PinwheelBillPayload extends PinwheelBillPayload {
  @override
  final String platformId;
  @override
  final String platformName;
  @override
  final String frequency;
  @override
  final String nextPaymentDate;
  @override
  final int amountCents;

  factory _$PinwheelBillPayload(
          [void Function(PinwheelBillPayloadBuilder)? updates]) =>
      (PinwheelBillPayloadBuilder()..update(updates))._build();

  _$PinwheelBillPayload._(
      {required this.platformId,
      required this.platformName,
      required this.frequency,
      required this.nextPaymentDate,
      required this.amountCents})
      : super._();
  @override
  PinwheelBillPayload rebuild(
          void Function(PinwheelBillPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelBillPayloadBuilder toBuilder() =>
      PinwheelBillPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PinwheelBillPayload &&
        platformId == other.platformId &&
        platformName == other.platformName &&
        frequency == other.frequency &&
        nextPaymentDate == other.nextPaymentDate &&
        amountCents == other.amountCents;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, platformId.hashCode);
    _$hash = $jc(_$hash, platformName.hashCode);
    _$hash = $jc(_$hash, frequency.hashCode);
    _$hash = $jc(_$hash, nextPaymentDate.hashCode);
    _$hash = $jc(_$hash, amountCents.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PinwheelBillPayload')
          ..add('platformId', platformId)
          ..add('platformName', platformName)
          ..add('frequency', frequency)
          ..add('nextPaymentDate', nextPaymentDate)
          ..add('amountCents', amountCents))
        .toString();
  }
}

class PinwheelBillPayloadBuilder
    implements
        Builder<PinwheelBillPayload, PinwheelBillPayloadBuilder>,
        PinwheelEventPayloadBuilder {
  _$PinwheelBillPayload? _$v;

  String? _platformId;
  String? get platformId => _$this._platformId;
  set platformId(covariant String? platformId) =>
      _$this._platformId = platformId;

  String? _platformName;
  String? get platformName => _$this._platformName;
  set platformName(covariant String? platformName) =>
      _$this._platformName = platformName;

  String? _frequency;
  String? get frequency => _$this._frequency;
  set frequency(covariant String? frequency) => _$this._frequency = frequency;

  String? _nextPaymentDate;
  String? get nextPaymentDate => _$this._nextPaymentDate;
  set nextPaymentDate(covariant String? nextPaymentDate) =>
      _$this._nextPaymentDate = nextPaymentDate;

  int? _amountCents;
  int? get amountCents => _$this._amountCents;
  set amountCents(covariant int? amountCents) =>
      _$this._amountCents = amountCents;

  PinwheelBillPayloadBuilder();

  PinwheelBillPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _platformId = $v.platformId;
      _platformName = $v.platformName;
      _frequency = $v.frequency;
      _nextPaymentDate = $v.nextPaymentDate;
      _amountCents = $v.amountCents;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PinwheelBillPayload other) {
    _$v = other as _$PinwheelBillPayload;
  }

  @override
  void update(void Function(PinwheelBillPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PinwheelBillPayload build() => _build();

  _$PinwheelBillPayload _build() {
    final _$result = _$v ??
        _$PinwheelBillPayload._(
          platformId: BuiltValueNullFieldError.checkNotNull(
              platformId, r'PinwheelBillPayload', 'platformId'),
          platformName: BuiltValueNullFieldError.checkNotNull(
              platformName, r'PinwheelBillPayload', 'platformName'),
          frequency: BuiltValueNullFieldError.checkNotNull(
              frequency, r'PinwheelBillPayload', 'frequency'),
          nextPaymentDate: BuiltValueNullFieldError.checkNotNull(
              nextPaymentDate, r'PinwheelBillPayload', 'nextPaymentDate'),
          amountCents: BuiltValueNullFieldError.checkNotNull(
              amountCents, r'PinwheelBillPayload', 'amountCents'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$PinwheelBillSwitchPlatform extends PinwheelBillSwitchPlatform {
  @override
  final String id;
  @override
  final String name;

  factory _$PinwheelBillSwitchPlatform(
          [void Function(PinwheelBillSwitchPlatformBuilder)? updates]) =>
      (PinwheelBillSwitchPlatformBuilder()..update(updates))._build();

  _$PinwheelBillSwitchPlatform._({required this.id, required this.name})
      : super._();
  @override
  PinwheelBillSwitchPlatform rebuild(
          void Function(PinwheelBillSwitchPlatformBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelBillSwitchPlatformBuilder toBuilder() =>
      PinwheelBillSwitchPlatformBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PinwheelBillSwitchPlatform &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PinwheelBillSwitchPlatform')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class PinwheelBillSwitchPlatformBuilder
    implements
        Builder<PinwheelBillSwitchPlatform, PinwheelBillSwitchPlatformBuilder> {
  _$PinwheelBillSwitchPlatform? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PinwheelBillSwitchPlatformBuilder();

  PinwheelBillSwitchPlatformBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PinwheelBillSwitchPlatform other) {
    _$v = other as _$PinwheelBillSwitchPlatform;
  }

  @override
  void update(void Function(PinwheelBillSwitchPlatformBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PinwheelBillSwitchPlatform build() => _build();

  _$PinwheelBillSwitchPlatform _build() {
    final _$result = _$v ??
        _$PinwheelBillSwitchPlatform._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'PinwheelBillSwitchPlatform', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'PinwheelBillSwitchPlatform', 'name'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$PinwheelBillSwitchPlatformsPayload
    extends PinwheelBillSwitchPlatformsPayload {
  @override
  final BuiltList<PinwheelBillSwitchPlatform> platforms;

  factory _$PinwheelBillSwitchPlatformsPayload(
          [void Function(PinwheelBillSwitchPlatformsPayloadBuilder)?
              updates]) =>
      (PinwheelBillSwitchPlatformsPayloadBuilder()..update(updates))._build();

  _$PinwheelBillSwitchPlatformsPayload._({required this.platforms}) : super._();
  @override
  PinwheelBillSwitchPlatformsPayload rebuild(
          void Function(PinwheelBillSwitchPlatformsPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelBillSwitchPlatformsPayloadBuilder toBuilder() =>
      PinwheelBillSwitchPlatformsPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PinwheelBillSwitchPlatformsPayload &&
        platforms == other.platforms;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, platforms.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PinwheelBillSwitchPlatformsPayload')
          ..add('platforms', platforms))
        .toString();
  }
}

class PinwheelBillSwitchPlatformsPayloadBuilder
    implements
        Builder<PinwheelBillSwitchPlatformsPayload,
            PinwheelBillSwitchPlatformsPayloadBuilder>,
        PinwheelEventPayloadBuilder {
  _$PinwheelBillSwitchPlatformsPayload? _$v;

  ListBuilder<PinwheelBillSwitchPlatform>? _platforms;
  ListBuilder<PinwheelBillSwitchPlatform> get platforms =>
      _$this._platforms ??= ListBuilder<PinwheelBillSwitchPlatform>();
  set platforms(covariant ListBuilder<PinwheelBillSwitchPlatform>? platforms) =>
      _$this._platforms = platforms;

  PinwheelBillSwitchPlatformsPayloadBuilder();

  PinwheelBillSwitchPlatformsPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _platforms = $v.platforms.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PinwheelBillSwitchPlatformsPayload other) {
    _$v = other as _$PinwheelBillSwitchPlatformsPayload;
  }

  @override
  void update(
      void Function(PinwheelBillSwitchPlatformsPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PinwheelBillSwitchPlatformsPayload build() => _build();

  _$PinwheelBillSwitchPlatformsPayload _build() {
    _$PinwheelBillSwitchPlatformsPayload _$result;
    try {
      _$result = _$v ??
          _$PinwheelBillSwitchPlatformsPayload._(
            platforms: platforms.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'platforms';
        platforms.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PinwheelBillSwitchPlatformsPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PinwheelExternalAccountConnectedPayload
    extends PinwheelExternalAccountConnectedPayload {
  @override
  final String institutionName;
  @override
  final String accountName;

  factory _$PinwheelExternalAccountConnectedPayload(
          [void Function(PinwheelExternalAccountConnectedPayloadBuilder)?
              updates]) =>
      (PinwheelExternalAccountConnectedPayloadBuilder()..update(updates))
          ._build();

  _$PinwheelExternalAccountConnectedPayload._(
      {required this.institutionName, required this.accountName})
      : super._();
  @override
  PinwheelExternalAccountConnectedPayload rebuild(
          void Function(PinwheelExternalAccountConnectedPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelExternalAccountConnectedPayloadBuilder toBuilder() =>
      PinwheelExternalAccountConnectedPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PinwheelExternalAccountConnectedPayload &&
        institutionName == other.institutionName &&
        accountName == other.accountName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, institutionName.hashCode);
    _$hash = $jc(_$hash, accountName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PinwheelExternalAccountConnectedPayload')
          ..add('institutionName', institutionName)
          ..add('accountName', accountName))
        .toString();
  }
}

class PinwheelExternalAccountConnectedPayloadBuilder
    implements
        Builder<PinwheelExternalAccountConnectedPayload,
            PinwheelExternalAccountConnectedPayloadBuilder>,
        PinwheelEventPayloadBuilder {
  _$PinwheelExternalAccountConnectedPayload? _$v;

  String? _institutionName;
  String? get institutionName => _$this._institutionName;
  set institutionName(covariant String? institutionName) =>
      _$this._institutionName = institutionName;

  String? _accountName;
  String? get accountName => _$this._accountName;
  set accountName(covariant String? accountName) =>
      _$this._accountName = accountName;

  PinwheelExternalAccountConnectedPayloadBuilder();

  PinwheelExternalAccountConnectedPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _institutionName = $v.institutionName;
      _accountName = $v.accountName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PinwheelExternalAccountConnectedPayload other) {
    _$v = other as _$PinwheelExternalAccountConnectedPayload;
  }

  @override
  void update(
      void Function(PinwheelExternalAccountConnectedPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PinwheelExternalAccountConnectedPayload build() => _build();

  _$PinwheelExternalAccountConnectedPayload _build() {
    final _$result = _$v ??
        _$PinwheelExternalAccountConnectedPayload._(
          institutionName: BuiltValueNullFieldError.checkNotNull(
              institutionName,
              r'PinwheelExternalAccountConnectedPayload',
              'institutionName'),
          accountName: BuiltValueNullFieldError.checkNotNull(accountName,
              r'PinwheelExternalAccountConnectedPayload', 'accountName'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$PinwheelCalendarSyncPayload extends PinwheelCalendarSyncPayload {
  @override
  final String calendarType;

  factory _$PinwheelCalendarSyncPayload(
          [void Function(PinwheelCalendarSyncPayloadBuilder)? updates]) =>
      (PinwheelCalendarSyncPayloadBuilder()..update(updates))._build();

  _$PinwheelCalendarSyncPayload._({required this.calendarType}) : super._();
  @override
  PinwheelCalendarSyncPayload rebuild(
          void Function(PinwheelCalendarSyncPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelCalendarSyncPayloadBuilder toBuilder() =>
      PinwheelCalendarSyncPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PinwheelCalendarSyncPayload &&
        calendarType == other.calendarType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, calendarType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PinwheelCalendarSyncPayload')
          ..add('calendarType', calendarType))
        .toString();
  }
}

class PinwheelCalendarSyncPayloadBuilder
    implements
        Builder<PinwheelCalendarSyncPayload,
            PinwheelCalendarSyncPayloadBuilder>,
        PinwheelEventPayloadBuilder {
  _$PinwheelCalendarSyncPayload? _$v;

  String? _calendarType;
  String? get calendarType => _$this._calendarType;
  set calendarType(covariant String? calendarType) =>
      _$this._calendarType = calendarType;

  PinwheelCalendarSyncPayloadBuilder();

  PinwheelCalendarSyncPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _calendarType = $v.calendarType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PinwheelCalendarSyncPayload other) {
    _$v = other as _$PinwheelCalendarSyncPayload;
  }

  @override
  void update(void Function(PinwheelCalendarSyncPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PinwheelCalendarSyncPayload build() => _build();

  _$PinwheelCalendarSyncPayload _build() {
    final _$result = _$v ??
        _$PinwheelCalendarSyncPayload._(
          calendarType: BuiltValueNullFieldError.checkNotNull(
              calendarType, r'PinwheelCalendarSyncPayload', 'calendarType'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$PinwheelUserActivatedPayload extends PinwheelUserActivatedPayload {
  @override
  final String solutionName;

  factory _$PinwheelUserActivatedPayload(
          [void Function(PinwheelUserActivatedPayloadBuilder)? updates]) =>
      (PinwheelUserActivatedPayloadBuilder()..update(updates))._build();

  _$PinwheelUserActivatedPayload._({required this.solutionName}) : super._();
  @override
  PinwheelUserActivatedPayload rebuild(
          void Function(PinwheelUserActivatedPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelUserActivatedPayloadBuilder toBuilder() =>
      PinwheelUserActivatedPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PinwheelUserActivatedPayload &&
        solutionName == other.solutionName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, solutionName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PinwheelUserActivatedPayload')
          ..add('solutionName', solutionName))
        .toString();
  }
}

class PinwheelUserActivatedPayloadBuilder
    implements
        Builder<PinwheelUserActivatedPayload,
            PinwheelUserActivatedPayloadBuilder>,
        PinwheelEventPayloadBuilder {
  _$PinwheelUserActivatedPayload? _$v;

  String? _solutionName;
  String? get solutionName => _$this._solutionName;
  set solutionName(covariant String? solutionName) =>
      _$this._solutionName = solutionName;

  PinwheelUserActivatedPayloadBuilder();

  PinwheelUserActivatedPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _solutionName = $v.solutionName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PinwheelUserActivatedPayload other) {
    _$v = other as _$PinwheelUserActivatedPayload;
  }

  @override
  void update(void Function(PinwheelUserActivatedPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PinwheelUserActivatedPayload build() => _build();

  _$PinwheelUserActivatedPayload _build() {
    final _$result = _$v ??
        _$PinwheelUserActivatedPayload._(
          solutionName: BuiltValueNullFieldError.checkNotNull(
              solutionName, r'PinwheelUserActivatedPayload', 'solutionName'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
