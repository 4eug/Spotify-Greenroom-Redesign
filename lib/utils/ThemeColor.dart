import 'package:flutter/material.dart';

class ThemeColor {
  const ThemeColor();

  static Color withBrightness({
    BuildContext context,
    Color color,
    Color darkColor,
  }) {
    if (darkColor == null) return color;
    if (Theme.of(context).brightness == Brightness.dark) return darkColor;
    return color;
  }
}
