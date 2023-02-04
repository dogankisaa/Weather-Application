import 'package:flutter/material.dart';
import 'package:weather_app/theme/app_bar_theme.dart';
import 'package:weather_app/theme/text_theme.dart';

ThemeData theme() {
  return ThemeData(
      appBarTheme: appBarTheme(),
      fontFamily: "SF Pro Display",
      textTheme: textTheme());
}
