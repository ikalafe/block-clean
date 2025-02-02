import 'package:flutter/material.dart';

extension TextThemeExtention on BuildContext {
  TextTheme get exTextTheme => Theme.of(this).textTheme;
}

extension ColorThemeExtention on BuildContext {
  ColorScheme get exColorTheme => Theme.of(this).colorScheme;
}