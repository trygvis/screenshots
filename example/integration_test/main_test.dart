import 'package:example/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:screenshots/src/capture_screen.dart';

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets("end-to-end test", (WidgetTester tester) async {
    runApp(const MyApp());

    await tester.pumpAndSettle();

    await screenshot(binding, tester, '0');

    await tester.tap(find.text('1'));
    await tester.pumpAndSettle();

    await screenshot(binding, tester, '1');
  });
}
