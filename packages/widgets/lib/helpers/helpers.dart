import 'package:flutter/material.dart';
import 'package:widgets/export.dart';

//SCREEN UTILS

getWidth(context) {
  return MediaQuery.of(context).size.width;
}

getHeight(context) {
  return MediaQuery.of(context).size.height;
}

TextTheme getTextTheme(context) {
  return Theme.of(context).textTheme;
}

space(double heigth, double width) {
  return SizedBox(
    height: rsp.getAdaptedHeight(heigth),
    width: rsp.getAdaptedWidth(width),
  );
}

void initializeResponsive({required context, required size}) {
  rsp = Responsive(context: context, uiSize: size);
  ts = TextStyles();
  styles = Styles();
}

Route animatedRoute(context, page) {
  return PageRouteBuilder(
    transitionDuration: const Duration(milliseconds: 800),
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = const Offset(1.0, 0.0);
      var end = Offset.zero;
      var curve = Curves.decelerate;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

openScreen(BuildContext context, screen, {origin}) {
  Navigator.of(context).push(animatedRoute(context, screen));
}

replaceScreen(BuildContext context, screen, {origin}) {
  Navigator.of(context).pushReplacement(animatedRoute(context, screen));
}

closeScreen(context, code, {var returnValue}) {
  Navigator.of(context).pop(returnValue);
}
