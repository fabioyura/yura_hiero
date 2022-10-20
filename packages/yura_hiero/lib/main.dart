import 'package:flutter/material.dart';
import 'package:yura_hiero/default_theme.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yura Hiero DEV',
      theme: defaultTheme,
      home: const HomeScreen(),
    );
  }
}
