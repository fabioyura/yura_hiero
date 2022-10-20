import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'helpers.dart';

class Responsive {
  final BuildContext context;
  late double screenHeight;
  late double screenWidth;

  Size? size;
  Size uiSize;
  Responsive({
    required this.context,
    this.size,
    this.uiSize = const Size(1080, 2340),
  }) {
    try {
      screenHeight = size == null ? getHeight(context) : size!.height;
      screenWidth = size == null ? getWidth(context) : size!.width;
    } catch (err) {
      screenHeight = 0;
      screenWidth = 0;
      if (kDebugMode) {
        print("Error: ${err.toString()}");
      }
    }
  }

  // Returns the adapted size for a given dimension in relation to the uiSize
  Function(dynamic designWidth) get getAdaptedWidth =>
      (designWidth) => screenWidth * proportionalWidth(designWidth);
  Function(dynamic designHeight) get getAdaptedHeight =>
      (designHeight) => screenHeight * proportionalHeight(designHeight);

  Function(dynamic designHeight) get height =>
      (designHeight) => screenHeight * proportionalHeight(designHeight);
  Function(dynamic designWidth) get width =>
      (designWidth) => screenWidth * proportionalWidth(designWidth);

  // Returns the fraction of a given number in relation to the uiSize
  Function(dynamic designWidth) get proportionalWidth =>
      (designWidth) => designWidth / uiSize.width;
  Function(dynamic designHeight) get proportionalHeight =>
      (designHeight) => designHeight / uiSize.height;

  double get scaleText => min(screenWidth, scaleHeight);
  double get scaleWidth => screenWidth / uiSize.width;
  double get scaleHeight => max(screenHeight, 700) / uiSize.height;
  double get fullWidth =>
      getAdaptedWidth(uiSize.width); // => MediaQuery.of(context).size.width
  double get fullHeight =>
      getAdaptedHeight(uiSize.height); // => MediaQuery.of(context).size.width

  double getSP(double size) => size * min(scaleHeight, scaleWidth);
  double getMP(double size) => size * max(scaleHeight, scaleWidth);

  double getFontSize(double size) {
    if (screenHeight != 0) return getSP(size);
    return size;
  }

  double getFontSizeWeb(double size) {
    if (screenHeight != 0) return getMP(size);
    return size;
  }
}
