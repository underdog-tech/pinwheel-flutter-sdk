import 'package:built_value/standard_json_plugin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pinwheel/models.dart';
import 'package:pinwheel/serializers.dart';

void main() {
  final standardSerializers =
      (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

  test('deserializes bill switch payloads with optional accountId', () {
    final payload = standardSerializers.deserializeWith(
      PinwheelBillSwitchPayload.serializer,
      {
        'platformId': 'platform-id',
        'platformName': 'Platform',
        'isIntegratedSwitch': true,
        'frequency': 'monthly',
        'nextPaymentDate': '2026-05-08',
        'amountCents': 1200,
        'accountId': 'account-id',
      },
    );

    expect(payload?.platformId, 'platform-id');
    expect(payload?.accountId, 'account-id');
  });

  test('deserializes bill switch platform list payloads', () {
    final payload = standardSerializers.deserializeWith(
      PinwheelBillSwitchPlatformsPayload.serializer,
      {
        'platforms': [
          {'id': 'platform-id', 'name': 'Platform'},
        ],
      },
    );

    expect(payload?.platforms.single.id, 'platform-id');
    expect(payload?.platforms.single.name, 'Platform');
  });

  test('deserializes other event payloads', () {
    final payload = standardSerializers.deserializeWith(
      PinwheelOtherEventPayload.serializer,
      {
        'name': 'custom_event',
        'payload': [
          {'key': 'enabled', 'value': 'true', 'type': 'boolean'},
        ],
      },
    );

    expect(payload?.name, 'custom_event');
    expect(payload?.payload.single.type,
        PinwheelOtherEventPayloadValueType.BOOLEAN);
  });
}
