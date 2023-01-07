import 'package:flutter/material.dart';

class SizeConfig {
  static double getProportionalHeight({required double inputHeight}) {
    return screenHeight / inputHeight;
  }

  static double getProportionalWidth({required double inputWidth}) {
    return screenWidth / inputWidth;
  }

  void init(BuildContext context) {
    mediaQuery = MediaQuery.of(context);
    screenWidth = mediaQuery.size.width;
    screenHeight = mediaQuery.size.height;
    orientation = mediaQuery.orientation;
  }

  static double? defaultSize;

  static Orientation? orientation;

  static late double screenHeight;

  static late double screenWidth;

  static late MediaQueryData mediaQuery;
}

Widget addVerticalSpace({double size = 10}) {
  return SizedBox(
    height: size,
  );
}
