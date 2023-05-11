import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_skill_connect_test/theme/app_colors.dart';

class AppTheme {
  static ThemeData buildLightTheme() {
    return ThemeData(
      // primaryColor: AppColors.primaryColor,
      colorSchemeSeed: AppColors.primaryColor,
      useMaterial3: true,
      fontFamily: 'GalanoGrotesque',
      scaffoldBackgroundColor: Colors.white,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50),
          padding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50),
          textStyle: TextStyle(
            color: AppColors.primaryColor,
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
          ),
          side: BorderSide(color: AppColors.primaryColor, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
