import 'package:flutter/material.dart';
import 'package:flutter_skill_connect_test/theme/app_colors.dart';

class AppTheme {
  static ThemeData buildLightTheme() {
    return ThemeData(
      // primaryColor: AppColors.primaryColor,
      colorSchemeSeed: AppColors.primaryColor,
      useMaterial3: true,
      fontFamily: 'GalanoGrotesque',
      scaffoldBackgroundColor: Colors.white,
      // elevatedButtonTheme: ElevatedButtonThemeData(
      //   // style: ElevatedButton.styleFrom(),
      // ),
    );
  }
}
