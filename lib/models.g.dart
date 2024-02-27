// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PinwheelAllocation> _$pinwheelAllocationSerializer =
    new _$PinwheelAllocationSerializer();
Serializer<PinwheelInputAllocationPayload>
    _$pinwheelInputAllocationPayloadSerializer =
    new _$PinwheelInputAllocationPayloadSerializer();
Serializer<PinwheelError> _$pinwheelErrorSerializer =
    new _$PinwheelErrorSerializer();
Serializer<PinwheelExitPayload> _$pinwheelExitPayloadSerializer =
    new _$PinwheelExitPayloadSerializer();
Serializer<PinwheelLoginPayload> _$pinwheelLoginPayloadSerializer =
    new _$PinwheelLoginPayloadSerializer();
Serializer<PinwheelLoginAttemptPayload>
    _$pinwheelLoginAttemptPayloadSerializer =
    new _$PinwheelLoginAttemptPayloadSerializer();
Serializer<PinwheelParams> _$pinwheelParamsSerializer =
    new _$PinwheelParamsSerializer();
Serializer<PinwheelSelectedEmployerPayload>
    _$pinwheelSelectedEmployerPayloadSerializer =
    new _$PinwheelSelectedEmployerPayloadSerializer();
Serializer<PinwheelSelectedPlatformPayload>
    _$pinwheelSelectedPlatformPayloadSerializer =
    new _$PinwheelSelectedPlatformPayloadSerializer();
Serializer<PinwheelSuccessPayload> _$pinwheelSuccessPayloadSerializer =
    new _$PinwheelSuccessPayloadSerializer();
Serializer<PinwheelEventChannelArgument>
    _$pinwheelEventChannelArgumentSerializer =
    new _$PinwheelEventChannelArgumentSerializer();
Serializer<PinwheelDDFormCreatePayload>
    _$pinwheelDDFormCreatePayloadSerializer =
    new _$PinwheelDDFormCreatePayloadSerializer();
Serializer<PinwheelScreenTransitionPayload>
    _$pinwheelScreenTransitionPayloadSerializer =
    new _$PinwheelScreenTransitionPayloadSerializer();

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
    return result;
  }

  @override
  PinwheelAllocation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PinwheelAllocationBuilder();

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
    final result = new PinwheelInputAllocationPayloadBuilder();

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
    final result = new PinwheelErrorBuilder();

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
    final result = new PinwheelExitPayloadBuilder();

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
    final result = new PinwheelLoginPayloadBuilder();

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
    final result = new PinwheelLoginAttemptPayloadBuilder();

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
    final result = new PinwheelParamsBuilder();

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
    final result = new PinwheelSelectedEmployerPayloadBuilder();

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
    final result = new PinwheelSelectedPlatformPayloadBuilder();

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
      'params',
      serializers.serialize(object.params,
          specifiedType: const FullType(PinwheelParams)),
    ];

    return result;
  }

  @override
  PinwheelSuccessPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PinwheelSuccessPayloadBuilder();

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
    final result = new PinwheelEventChannelArgumentBuilder();

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
    final result = new PinwheelDDFormCreatePayloadBuilder();

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
    final result = new PinwheelScreenTransitionPayloadBuilder();

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

abstract class PinwheelEventPayloadBuilder {
  void replace(PinwheelEventPayload other);
  void update(void Function(PinwheelEventPayloadBuilder) updates);
}

class _$PinwheelAllocation extends PinwheelAllocation {
  @override
  final String type;
  @override
  final double? value;

  factory _$PinwheelAllocation(
          [void Function(PinwheelAllocationBuilder)? updates]) =>
      (new PinwheelAllocationBuilder()..update(updates))._build();

  _$PinwheelAllocation._({required this.type, this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(type, r'PinwheelAllocation', 'type');
  }

  @override
  PinwheelAllocation rebuild(
          void Function(PinwheelAllocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelAllocationBuilder toBuilder() =>
      new PinwheelAllocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PinwheelAllocation &&
        type == other.type &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PinwheelAllocation')
          ..add('type', type)
          ..add('value', value))
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

  PinwheelAllocationBuilder();

  PinwheelAllocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PinwheelAllocation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PinwheelAllocation;
  }

  @override
  void update(void Function(PinwheelAllocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PinwheelAllocation build() => _build();

  _$PinwheelAllocation _build() {
    final _$result = _$v ??
        new _$PinwheelAllocation._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'PinwheelAllocation', 'type'),
            value: value);
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
      (new PinwheelInputAllocationPayloadBuilder()..update(updates))._build();

  _$PinwheelInputAllocationPayload._({this.action, this.allocation})
      : super._();

  @override
  PinwheelInputAllocationPayload rebuild(
          void Function(PinwheelInputAllocationPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelInputAllocationPayloadBuilder toBuilder() =>
      new PinwheelInputAllocationPayloadBuilder()..replace(this);

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
      _$this._allocation ??= new PinwheelAllocationBuilder();
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
    ArgumentError.checkNotNull(other, 'other');
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
          new _$PinwheelInputAllocationPayload._(
              action: action, allocation: _allocation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allocation';
        _allocation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
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
      (new PinwheelErrorBuilder()..update(updates))._build();

  _$PinwheelError._(
      {required this.type,
      required this.code,
      required this.message,
      required this.pendingRetry})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(type, r'PinwheelError', 'type');
    BuiltValueNullFieldError.checkNotNull(code, r'PinwheelError', 'code');
    BuiltValueNullFieldError.checkNotNull(message, r'PinwheelError', 'message');
    BuiltValueNullFieldError.checkNotNull(
        pendingRetry, r'PinwheelError', 'pendingRetry');
  }

  @override
  PinwheelError rebuild(void Function(PinwheelErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelErrorBuilder toBuilder() => new PinwheelErrorBuilder()..replace(this);

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
    ArgumentError.checkNotNull(other, 'other');
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
        new _$PinwheelError._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'PinwheelError', 'type'),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'PinwheelError', 'code'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'PinwheelError', 'message'),
            pendingRetry: BuiltValueNullFieldError.checkNotNull(
                pendingRetry, r'PinwheelError', 'pendingRetry'));
    replace(_$result);
    return _$result;
  }
}

class _$PinwheelExitPayload extends PinwheelExitPayload {
  @override
  final PinwheelError? error;

  factory _$PinwheelExitPayload(
          [void Function(PinwheelExitPayloadBuilder)? updates]) =>
      (new PinwheelExitPayloadBuilder()..update(updates))._build();

  _$PinwheelExitPayload._({this.error}) : super._();

  @override
  PinwheelExitPayload rebuild(
          void Function(PinwheelExitPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelExitPayloadBuilder toBuilder() =>
      new PinwheelExitPayloadBuilder()..replace(this);

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
  PinwheelErrorBuilder get error =>
      _$this._error ??= new PinwheelErrorBuilder();
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
    ArgumentError.checkNotNull(other, 'other');
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
      _$result = _$v ?? new _$PinwheelExitPayload._(error: _error?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'error';
        _error?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
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
      (new PinwheelLoginPayloadBuilder()..update(updates))._build();

  _$PinwheelLoginPayload._({required this.accountId, this.platformId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accountId, r'PinwheelLoginPayload', 'accountId');
  }

  @override
  PinwheelLoginPayload rebuild(
          void Function(PinwheelLoginPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelLoginPayloadBuilder toBuilder() =>
      new PinwheelLoginPayloadBuilder()..replace(this);

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
    ArgumentError.checkNotNull(other, 'other');
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
        new _$PinwheelLoginPayload._(
            accountId: BuiltValueNullFieldError.checkNotNull(
                accountId, r'PinwheelLoginPayload', 'accountId'),
            platformId: platformId);
    replace(_$result);
    return _$result;
  }
}

class _$PinwheelLoginAttemptPayload extends PinwheelLoginAttemptPayload {
  @override
  final String platformId;

  factory _$PinwheelLoginAttemptPayload(
          [void Function(PinwheelLoginAttemptPayloadBuilder)? updates]) =>
      (new PinwheelLoginAttemptPayloadBuilder()..update(updates))._build();

  _$PinwheelLoginAttemptPayload._({required this.platformId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        platformId, r'PinwheelLoginAttemptPayload', 'platformId');
  }

  @override
  PinwheelLoginAttemptPayload rebuild(
          void Function(PinwheelLoginAttemptPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelLoginAttemptPayloadBuilder toBuilder() =>
      new PinwheelLoginAttemptPayloadBuilder()..replace(this);

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
    ArgumentError.checkNotNull(other, 'other');
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
        new _$PinwheelLoginAttemptPayload._(
            platformId: BuiltValueNullFieldError.checkNotNull(
                platformId, r'PinwheelLoginAttemptPayload', 'platformId'));
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
      (new PinwheelParamsBuilder()..update(updates))._build();

  _$PinwheelParams._({this.action, this.allocation}) : super._();

  @override
  PinwheelParams rebuild(void Function(PinwheelParamsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelParamsBuilder toBuilder() =>
      new PinwheelParamsBuilder()..replace(this);

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
      _$this._allocation ??= new PinwheelAllocationBuilder();
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
    ArgumentError.checkNotNull(other, 'other');
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
          new _$PinwheelParams._(
              action: action, allocation: _allocation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allocation';
        _allocation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
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
      (new PinwheelSelectedEmployerPayloadBuilder()..update(updates))._build();

  _$PinwheelSelectedEmployerPayload._(
      {required this.selectedEmployerId, required this.selectedEmployerName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(selectedEmployerId,
        r'PinwheelSelectedEmployerPayload', 'selectedEmployerId');
    BuiltValueNullFieldError.checkNotNull(selectedEmployerName,
        r'PinwheelSelectedEmployerPayload', 'selectedEmployerName');
  }

  @override
  PinwheelSelectedEmployerPayload rebuild(
          void Function(PinwheelSelectedEmployerPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelSelectedEmployerPayloadBuilder toBuilder() =>
      new PinwheelSelectedEmployerPayloadBuilder()..replace(this);

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
    ArgumentError.checkNotNull(other, 'other');
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
        new _$PinwheelSelectedEmployerPayload._(
            selectedEmployerId: BuiltValueNullFieldError.checkNotNull(
                selectedEmployerId,
                r'PinwheelSelectedEmployerPayload',
                'selectedEmployerId'),
            selectedEmployerName: BuiltValueNullFieldError.checkNotNull(
                selectedEmployerName,
                r'PinwheelSelectedEmployerPayload',
                'selectedEmployerName'));
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
      (new PinwheelSelectedPlatformPayloadBuilder()..update(updates))._build();

  _$PinwheelSelectedPlatformPayload._(
      {required this.selectedPlatformId, required this.selectedPlatformName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(selectedPlatformId,
        r'PinwheelSelectedPlatformPayload', 'selectedPlatformId');
    BuiltValueNullFieldError.checkNotNull(selectedPlatformName,
        r'PinwheelSelectedPlatformPayload', 'selectedPlatformName');
  }

  @override
  PinwheelSelectedPlatformPayload rebuild(
          void Function(PinwheelSelectedPlatformPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelSelectedPlatformPayloadBuilder toBuilder() =>
      new PinwheelSelectedPlatformPayloadBuilder()..replace(this);

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
    ArgumentError.checkNotNull(other, 'other');
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
        new _$PinwheelSelectedPlatformPayload._(
            selectedPlatformId: BuiltValueNullFieldError.checkNotNull(
                selectedPlatformId,
                r'PinwheelSelectedPlatformPayload',
                'selectedPlatformId'),
            selectedPlatformName: BuiltValueNullFieldError.checkNotNull(
                selectedPlatformName,
                r'PinwheelSelectedPlatformPayload',
                'selectedPlatformName'));
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
  final PinwheelParams params;

  factory _$PinwheelSuccessPayload(
          [void Function(PinwheelSuccessPayloadBuilder)? updates]) =>
      (new PinwheelSuccessPayloadBuilder()..update(updates))._build();

  _$PinwheelSuccessPayload._(
      {required this.accountId,
      required this.platformId,
      required this.job,
      required this.params})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accountId, r'PinwheelSuccessPayload', 'accountId');
    BuiltValueNullFieldError.checkNotNull(
        platformId, r'PinwheelSuccessPayload', 'platformId');
    BuiltValueNullFieldError.checkNotNull(
        job, r'PinwheelSuccessPayload', 'job');
    BuiltValueNullFieldError.checkNotNull(
        params, r'PinwheelSuccessPayload', 'params');
  }

  @override
  PinwheelSuccessPayload rebuild(
          void Function(PinwheelSuccessPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelSuccessPayloadBuilder toBuilder() =>
      new PinwheelSuccessPayloadBuilder()..replace(this);

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
      _$this._params ??= new PinwheelParamsBuilder();
  set params(covariant PinwheelParamsBuilder? params) =>
      _$this._params = params;

  PinwheelSuccessPayloadBuilder();

  PinwheelSuccessPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _platformId = $v.platformId;
      _job = $v.job;
      _params = $v.params.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PinwheelSuccessPayload other) {
    ArgumentError.checkNotNull(other, 'other');
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
          new _$PinwheelSuccessPayload._(
              accountId: BuiltValueNullFieldError.checkNotNull(
                  accountId, r'PinwheelSuccessPayload', 'accountId'),
              platformId: BuiltValueNullFieldError.checkNotNull(
                  platformId, r'PinwheelSuccessPayload', 'platformId'),
              job: BuiltValueNullFieldError.checkNotNull(
                  job, r'PinwheelSuccessPayload', 'job'),
              params: params.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'params';
        params.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
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
      (new PinwheelEventChannelArgumentBuilder()..update(updates))._build();

  _$PinwheelEventChannelArgument._({required this.name, this.payload})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'PinwheelEventChannelArgument', 'name');
  }

  @override
  PinwheelEventChannelArgument rebuild(
          void Function(PinwheelEventChannelArgumentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelEventChannelArgumentBuilder toBuilder() =>
      new PinwheelEventChannelArgumentBuilder()..replace(this);

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
    ArgumentError.checkNotNull(other, 'other');
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
        new _$PinwheelEventChannelArgument._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'PinwheelEventChannelArgument', 'name'),
            payload: payload);
    replace(_$result);
    return _$result;
  }
}

class _$PinwheelDDFormCreatePayload extends PinwheelDDFormCreatePayload {
  @override
  final String url;

  factory _$PinwheelDDFormCreatePayload(
          [void Function(PinwheelDDFormCreatePayloadBuilder)? updates]) =>
      (new PinwheelDDFormCreatePayloadBuilder()..update(updates))._build();

  _$PinwheelDDFormCreatePayload._({required this.url}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        url, r'PinwheelDDFormCreatePayload', 'url');
  }

  @override
  PinwheelDDFormCreatePayload rebuild(
          void Function(PinwheelDDFormCreatePayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelDDFormCreatePayloadBuilder toBuilder() =>
      new PinwheelDDFormCreatePayloadBuilder()..replace(this);

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
    ArgumentError.checkNotNull(other, 'other');
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
        new _$PinwheelDDFormCreatePayload._(
            url: BuiltValueNullFieldError.checkNotNull(
                url, r'PinwheelDDFormCreatePayload', 'url'));
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
      (new PinwheelScreenTransitionPayloadBuilder()..update(updates))._build();

  _$PinwheelScreenTransitionPayload._(
      {required this.screenName,
      this.selectedEmployerId,
      this.selectedEmployerName,
      this.selectedPlatformId,
      this.selectedPlatformName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        screenName, r'PinwheelScreenTransitionPayload', 'screenName');
  }

  @override
  PinwheelScreenTransitionPayload rebuild(
          void Function(PinwheelScreenTransitionPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinwheelScreenTransitionPayloadBuilder toBuilder() =>
      new PinwheelScreenTransitionPayloadBuilder()..replace(this);

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
    ArgumentError.checkNotNull(other, 'other');
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
        new _$PinwheelScreenTransitionPayload._(
            screenName: BuiltValueNullFieldError.checkNotNull(
                screenName, r'PinwheelScreenTransitionPayload', 'screenName'),
            selectedEmployerId: selectedEmployerId,
            selectedEmployerName: selectedEmployerName,
            selectedPlatformId: selectedPlatformId,
            selectedPlatformName: selectedPlatformName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
