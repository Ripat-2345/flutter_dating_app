import 'package:flutter/material.dart';

class ColorManger {
  static Color primary = HexColor.fromHex('#03091C');
  static Color secondary = HexColor.fromHex('#262F4B');
  static Color white = HexColor.fromHex('#FFFFFF');
  static Color pink = HexColor.fromHex('#EA887B');
  static Color purple = HexColor.fromHex('#CE92E3');
  static Color black60 = HexColor.fromHex('#737D9C');
  static Color blac = HexColor.fromHex('#5B6279');
  static Color grey = HexColor.fromHex('#D9D9D9');
  static Color grey60 = HexColor.fromHex('#A9A9AC');
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = 'FF$hexColorString';
    }

    return Color(int.parse(hexColorString, radix: 16));
  }
}