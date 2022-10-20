import 'package:flutter/material.dart';
import 'package:widgets/export.dart';
import 'package:yura_hiero/src/list_items/home_list_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    initializeResponsive(context: context, size: const Size(1366, 768));
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const HomeListItems(),
          space(10, 0),
          const HomeLine(),
          const HomeLogo()
        ],
      ),
    );
  }
}
