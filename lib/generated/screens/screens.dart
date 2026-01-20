import '../../src/globals.dart';
import '../../src/resources.dart';

import 'android/1080/navbar-pixel5-gesture.png.dart' as i21;
import 'android/1080/navbar.png.dart' as i15;
import 'android/1080/statusbar-pixel5.png.dart' as i20;
import 'android/1080/statusbar.png.dart' as i14;
import 'android/1440/navbar_black.png.dart' as i18;
import 'android/1440/statusbar.png.dart' as i17;
import 'android/1536/navigationbar.png.dart' as i24;
import 'android/1536/statusbar.png.dart' as i23;
import 'android/phones/Google Pixel 5 Just Black.png.dart' as i22;
import 'android/phones/Nexus 6P.png.dart' as i19;
import 'android/phones/Nexus_5X.png.dart' as i16;
import 'android/tablets/Nexus 9.png.dart' as i25;
import 'ios/1125/statusbar_black.png.dart' as i5;
import 'ios/1125/statusbar_white.png.dart' as i4;
import 'ios/1242/statusbar_black.png.dart' as i1;
import 'ios/1242/statusbar_white.png.dart' as i2;
import 'ios/2048/statusbar_black.png.dart' as i11;
import 'ios/2048/statusbar_white.png.dart' as i10;
import 'ios/6.5inch/statusbar_black.png.dart' as i8;
import 'ios/6.5inch/statusbar_white.png.dart' as i7;
import 'ios/phones/Apple iPhone X Silver.png.dart' as i6;
import 'ios/phones/Apple iPhone XS Max Silver.png.dart' as i9;
import 'ios/phones/iPad_Pro_Silver.png.dart' as i12;
import 'ios/phones/iPad_Pro_Space_Grey_3rd_Generation.png.dart' as i13;
import 'ios/phones/iPhone_7_Plus_Silver.png.dart' as i3;

const List<ScreenInfo> screens = [
  ScreenInfo(
    DeviceType.ios,
    '5.5inch',
    "1242x2208",
    "75%",
    "-0-0",
    null,
    [
      'iPhone 6 Plus',
      'iPhone 6S Plus',
      'iPhone 6s Plus',
      'iPhone 7 Plus',
      'iPhone 8 Plus',
    ],
    statusbar: i1.r,
    statusbarBlack: i1.r,
    statusbarWhite: i2.r,
    frame: i3.r,
  ),
  ScreenInfo(
    DeviceType.ios,
    '5.8inch',
    "1125x2436",
    "87%",
    "-0-0",
    null,
    [
      'iPhone X',
      'iPhone XS',
      'iPhone Xs',
    ],
    statusbar: i4.r,
    statusbarBlack: i5.r,
    statusbarWhite: i4.r,
    frame: i6.r,
  ),
  ScreenInfo(
    DeviceType.ios,
    '6.5inch',
    "1242x2688",
    "87%",
    "-0-2",
    null,
    [
      'iPhone XR',
      'iPhone Xr',
      'iPhone XS Max',
      'iPhone Xs Max',
      'iPhone 11',
      'iPhone 11 Pro Max',
      'iPhone 12 Pro Max',
      'iPhone 13 Pro Max',
      'iPhone 14 Plus',
    ],
    statusbar: i7.r,
    statusbarBlack: i8.r,
    statusbarWhite: i7.r,
    frame: i9.r,
  ),
  ScreenInfo(
    DeviceType.ios,
    '12.9inch',
    "2048x2732",
    "86%",
    "-0-0",
    null,
    [
      'iPad Pro (12.9-inch) (1st generation)',
      'iPad Pro (12.9-inch) (2nd generation)',
    ],
    statusbar: i10.r,
    statusbarBlack: i11.r,
    statusbarWhite: i10.r,
    frame: i12.r,
  ),
  ScreenInfo(
    DeviceType.ios,
    '12.9inch_3rd_generation',
    "2048x2732",
    "91.25%",
    "-3+2",
    null,
    [
      'iPad Pro (12.9-inch) (3rd generation)',
      'iPad Pro (12.9-inch) (4th generation)',
    ],
    statusbar: i10.r,
    statusbarBlack: i11.r,
    statusbarWhite: i10.r,
    frame: i13.r,
  ),
  ScreenInfo(
    DeviceType.android,
    '5.2inch',
    "1080x1920",
    "80%",
    "-4-9",
    "phone",
    [
      'Nexus 5X',
    ],
    statusbar: i14.r,
    statusbarBlack: i14.r,
    statusbarWhite: i14.r,
    navbar: i15.r,
    frame: i16.r,
  ),
  ScreenInfo(
    DeviceType.android,
    '5.7inch',
    "1440x2560",
    "80%",
    "-3+8",
    "phone",
    [
      'Nexus 6P',
      'Pixel 4',
    ],
    statusbar: i17.r,
    statusbarBlack: i17.r,
    statusbarWhite: i17.r,
    navbar: i18.r,
    frame: i19.r,
  ),
  ScreenInfo(
    DeviceType.android,
    '6inch',
    "1080x2340",
    "80%",
    "-3+8",
    "phone",
    [
      'Pixel 5',
    ],
    statusbar: i20.r,
    statusbarBlack: i20.r,
    statusbarWhite: i20.r,
    navbar: i21.r,
    frame: i22.r,
  ),
  ScreenInfo(
    DeviceType.android,
    '8.9inch',
    "1536x2048",
    "80%",
    "+0+0",
    "tenInch",
    [
      'Nexus 9',
    ],
    statusbar: i23.r,
    statusbarBlack: i23.r,
    statusbarWhite: i23.r,
    navbar: i24.r,
    frame: i25.r,
  ),
  ScreenInfo(
    DeviceType.android,
    'default phone',
    null,
    null,
    null,
    "phone",
    [
      'default phone',
      'Nexus 6',
    ],
  ),
  ScreenInfo(
    DeviceType.android,
    'default sevenInch',
    null,
    null,
    null,
    "sevenInch",
    [
      'default seven inch',
    ],
  ),
  ScreenInfo(
    DeviceType.android,
    'default tenInch',
    null,
    null,
    null,
    "tenInch",
    [
      'default ten inch',
    ],
  ),
];
