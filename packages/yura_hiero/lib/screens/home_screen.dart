import 'package:flutter/material.dart';
import 'package:widgets/export.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    initializeResponsive(
        context: context, size: Size(rsp.width(1366), rsp.height(768)));
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(child: Image.asset('assets/hiero_logo.gif')),
        ],
      ),
    );
  }
}
