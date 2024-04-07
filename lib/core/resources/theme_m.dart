import 'package:flutter/material.dart';
import 'package:test_ui/core/resources/colors_m.dart';
import 'package:test_ui/core/resources/font_m.dart';
import 'package:test_ui/core/resources/styles_m.dart';

ThemeData getAppTheme() {
  return ThemeData(
    cardTheme: const CardTheme(
      color: ColorsManager.white,
      shadowColor: ColorsManager.grey,
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorsManager.white,
      shadowColor: ColorsManager.grey,
      titleTextStyle: getSemiBoldStyle(
        color: ColorsManager.black,
        fontSize: FontSize.s24,
      ),
    ),
  );
}
