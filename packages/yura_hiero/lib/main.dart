import 'package:flutter/material.dart';
import 'package:widgets/export.dart';

import 'src/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    initializeResponsive(context: context, size: const Size(1366, 768));
    return MaterialApp(
      title: 'Yura Hiero DEV',
      debugShowCheckedModeBanner: false,
      theme: DefaultTheme().defaultTheme(),
      home: const HomeScreen(),
    );
  }
}
