import 'package:flutter/material.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight);
}

// regular style

TextStyle getRegularStyle({double fontSize = 18, required Color color}) {
  return _getTextStyle(fontSize, FontWeight.w400, color);
}
// light text style

TextStyle getLightStyle({double fontSize = 12, required Color color}) {
  return _getTextStyle(fontSize, FontWeight.w300, color);
}
// bold text style

TextStyle getHeadingStyle({double fontSize = 34, required Color color}) {
  return _getTextStyle(fontSize, FontWeight.w700, color);
}

// semi bold text style

TextStyle getSemiBoldStyle({double fontSize = 18, required Color color}) {
  return _getTextStyle(fontSize, FontWeight.w500, color);
}

// medium text style

TextStyle getMediumStyle({double fontSize = 14, required Color color}) {
  return _getTextStyle(fontSize, FontWeight.w500, color);
}