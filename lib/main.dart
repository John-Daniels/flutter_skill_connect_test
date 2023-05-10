import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_skill_connect_test/router/app_routes.dart';
import 'package:flutter_skill_connect_test/theme/app_theme.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, __) {
        return GetMaterialApp(
          title: 'SkillConnect Test',
          theme: AppTheme.buildLightTheme(),
          getPages: AppRouter.pages,
          initialRoute: AppRouter.initialRoute,
        );
      },
    );
  }
}
