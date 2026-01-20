import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:integration_test/src/channel.dart';

import 'dart:async';
import 'dart:io';
import 'dart:ui';

bool isAndroid() {
  return Platform.isAndroid;
}

// /// Called by integration test to capture images.
Future<void> screenshot(binding, tester, String name) async {
  if (isAndroid()) {
    await integrationTestChannel.invokeMethod<void>(
      'convertFlutterSurfaceToImage',
      null,
    );
  } // TODO: Change to binding.convertFlutterSurfaceToImage() when this issue is fixed: https://github.com/flutter/flutter/issues/92381
  await tester.pumpAndSettle();

  // TODO: Replace the following block with binding.takeScreenshot(name) when this issue is fixed: https://github.com/flutter/flutter/issues/92381
  binding.reportData ??= <String, dynamic>{};
  binding.reportData!['screenshots'] ??= <dynamic>[];
  integrationTestChannel.setMethodCallHandler((MethodCall call) async {
    switch (call.method) {
      case 'scheduleFrame':
        PlatformDispatcher.instance.scheduleFrame();
        break;
    }
    return null;
  });
  final List<int>? rawBytes =
      await integrationTestChannel.invokeMethod<List<int>>(
    'captureScreenshot',
    <String, dynamic>{'name': name},
  );
  if (rawBytes == null) {
    throw StateError(
        'Expected a list of bytes, but instead captureScreenshot returned null');
  }
  final Map<String, dynamic> data = {
    'screenshotName': name,
    'bytes': rawBytes,
  };
  assert(data.containsKey('bytes'));
  (binding.reportData!['screenshots'] as List<dynamic>).add(data);
  // TODO: Replace the above block with binding.takeScreenshot(name) when this issue is fixed: https://github.com/flutter/flutter/issues/92381

  if (isAndroid()) {
    await integrationTestChannel.invokeMethod<void>(
      'revertFlutterImage',
      null,
    );
  } // TODO: Change to binding.revertFlutterImage() when this issue is fixed: https://github.com/flutter/flutter/issues/92381
}
