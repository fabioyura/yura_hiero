import 'package:flutter/material.dart';
import 'package:widgets/export.dart';

class Styles {
  // >>>>> THEME <<<<<
  ColorScheme darkColorScheme = const ColorScheme.dark(
    error: Color(0xFFBA1B1B),
  );

  // >>>>> COLOR <<<<<
  static const Map<int, Color> colorPalletPrimary = {
    10: Color(0xFF28f2e1),
    100: Color(0xFF0ea092),
  };

  static const MaterialColor primaryColor =
      MaterialColor(0xFF0ea092, colorPalletPrimary);
  static const MaterialColor lightPrimaryColor =
      MaterialColor(0xFF28f2e1, colorPalletPrimary);
  static ButtonStyle homeButton = ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(primaryColor),
    textStyle: MaterialStateProperty.all<TextStyle>(ts.home),
  );
}
