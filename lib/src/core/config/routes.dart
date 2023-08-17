import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:protocol_tele_flutter/src/features/onboarding/on_boarding_binding.dart';
import 'package:protocol_tele_flutter/src/features/onboarding/on_boarding_screen_1.dart';

class AppRoutes {
  static const String login = '/login';
  static const String register = '/register';
  static const String onBoarding1 = '/onBoarding1';

  static String getLoginRoute() => login;

  static String getOnBoarding1Route() => onBoarding1;

  static String getRegisterRoute() => register;

  static generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
      // return GetPageRoute(settings: settings, routeName: getLoginRoute(), page: () => LoginScreen());
      case onBoarding1:
        return GetPageRoute(
          settings: settings,
          routeName: getOnBoarding1Route(),
          page: () => const OnBoardingScreen1(),
        );
      default:
        return null;
    }
  }

  static getPages() => [
        // GetPage(
        //   name: login,
        //   page: () => LoginScreen(),
        //   binding: LoginBinding(),
        // ),
        GetPage(name: onBoarding1, page: () => const OnBoardingScreen1(), binding: OnBoardingBinding())
      ];
}
