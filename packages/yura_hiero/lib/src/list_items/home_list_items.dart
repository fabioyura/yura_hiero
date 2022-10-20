import 'package:flutter/material.dart';
import 'package:widgets/export.dart';

class HomeListItems extends StatelessWidget {
  const HomeListItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          style: Styles.homeButton,
          child: const Text('Home'),
        ),
        space(0, 50),
        TextButton(
          onPressed: () {},
          style: Styles.homeButton,
          child: const Text('API'),
        ),
        space(0, 50),
        TextButton(
          onPressed: () {},
          style: Styles.homeButton,
          child: const Text('Projects'),
        ),
        space(0, 50),
        TextButton(
          onPressed: () {},
          style: Styles.homeButton,
          child: const Text('About Me'),
        ),
      ],
    );
  }
}
