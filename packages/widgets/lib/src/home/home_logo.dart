import 'package:flutter/material.dart';
import 'package:widgets/helpers/constants.dart';

class HomeLogo extends StatelessWidget {
  const HomeLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: rsp.height(400),
        margin: EdgeInsets.only(top: rsp.height(50)),
        child: Image.asset('assets/hiero_logo.gif'),
      ),
    );
  }
}
