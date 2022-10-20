import 'package:flutter/material.dart';
import 'package:widgets/export.dart';

class HomeLine extends StatelessWidget {
  const HomeLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: rsp.height(2),
      width: rsp.fullWidth,
      color: Styles.primaryColor,
      margin: EdgeInsets.symmetric(horizontal: rsp.width(50)),
    );
  }
}
