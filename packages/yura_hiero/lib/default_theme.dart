import 'package:flutter/material.dart';

class DefaultTheme {
  ThemeData defaultTheme() {
    return ThemeData(
      useMaterial3: true,
    );
  }
}

get defaultTheme => defaultTheme();
