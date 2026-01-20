import 'package:flutter/material.dart';
import 'package:flutter_driver/driver_extension.dart';

import '../lib/main.dart';

void main() {
  enableFlutterDriverExtension();
  runApp(Center(child: Flavor()));
}
