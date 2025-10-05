import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:onboarding_screen/routes/app_routes.dart';
import 'core/bindings/controller_binder.dart';

class PlatformUtils {
  static bool get isIOS =>
      foundation.defaultTargetPlatform == TargetPlatform.iOS;
  static bool get isAndroid =>
      foundation.defaultTargetPlatform == TargetPlatform.android;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return  GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoute.init,
          getPages: AppRoute.routes,
          initialBinding: ControllerBinder(),
          themeMode: ThemeMode.light,
        );
      },
    );
  }
}