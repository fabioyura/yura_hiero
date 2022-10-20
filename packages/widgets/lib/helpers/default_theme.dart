import 'package:flutter/material.dart';
import 'package:widgets/export.dart';

class DefaultTheme {
  ThemeData defaultTheme() {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
      ),
      useMaterial3: true,
      colorScheme: styles.darkColorScheme,
    );
  }
}
