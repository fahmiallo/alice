import 'package:flutter/material.dart';

class AliceConstants {
  static Color red = Color(0xffff3f34);
  static Color lightRed = Color(0xffff5e57);
  static Color green = Color(0xff05c46b);
  static Color grey = Color(0xff808e9b);
  static Color orange = Color(0xffffa801);

  static Color getBackgroundColor(Brightness brightness) {
    if (brightness == Brightness.light) {
      return Colors.white.withOpacity(0.99);
    } else {
      return Colors.grey[700]!;
    }
  }

  static getThemeData(Brightness brightness) {
    return ThemeData(
      brightness: brightness,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: AliceConstants.lightRed,
        brightness: brightness,
        background: AliceConstants.getBackgroundColor(brightness),
      ),
    );
  }
}
