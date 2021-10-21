import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pinwheel/pinwheel.dart';

void main() {
  const MethodChannel channel = MethodChannel('pinwheel');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    // Pinwheel(23);
    // expect("hello", "hello");
  });
}
