import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double screenWidth = 10;
  static double screenHeight = 10;
  static Size? size;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData?.size.width ?? 10;
    screenHeight = _mediaQueryData?.size.height ?? 10;
    size = _mediaQueryData?.size;
  }
}
