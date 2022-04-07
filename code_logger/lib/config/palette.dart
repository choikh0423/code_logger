import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Palette {
  static const Color backgroundColor = Color(0xFF0C1427);
  static const Color mainFontColor = Color(0xFFFFFFFF);
  static const Color subFontColor = Color(0xFFB7B7B7);
  static const Color IconColor = Color(0xFFFFFFFF);
  static const Color redIconColor = Color(0xFFDA4747);
  static const Color greenIconColor = Color(0xFF58D97C);
  static const Color yellowIconColor = Color(0xFFD0C13B);
}

class FontStyle {
  static const TextStyle heading1TextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: Palette.mainFontColor,
    fontSize: 30.0,
  );
  static const TextStyle heading2TextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: Palette.mainFontColor,
    fontSize: 25.0,
  );
  static const TextStyle heading3TextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: Palette.mainFontColor,
    fontSize: 20.0,
  );
  static const TextStyle contentTextStyle = TextStyle(
    color: Palette.mainFontColor,
    fontSize: 20.0,
  );
  static const TextStyle helperTextStyle = TextStyle(
    color: Palette.subFontColor,
    fontSize: 20.0,
  );
}
