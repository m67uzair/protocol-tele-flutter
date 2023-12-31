import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:protocol_tele_flutter/src/core/config/routes.dart';
import 'package:protocol_tele_flutter/src/features/onboarding/on_boarding_binding.dart';
import 'package:protocol_tele_flutter/src/features/signup/signup_binding.dart';
import 'package:protocol_tele_flutter/src/features/signup/signup_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          smartManagement: SmartManagement.full,
          initialRoute: AppRoutes.getSignupOptionsRoute(),
          initialBinding: SignupBinding(),
          getPages: AppRoutes.getPages(),
          onGenerateRoute: (settings) => AppRoutes.generateRoute(settings),
        );
      },
    );
  }
}
