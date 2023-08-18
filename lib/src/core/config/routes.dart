import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:protocol_tele_flutter/src/features/onboarding/on_boarding_binding.dart';
import 'package:protocol_tele_flutter/src/features/onboarding/on_boarding_screen_1.dart';
import 'package:protocol_tele_flutter/src/features/onboarding/on_boarding_screen_2.dart';
import 'package:protocol_tele_flutter/src/features/onboarding/on_boarding_screen_3.dart';
import 'package:protocol_tele_flutter/src/features/onboarding/on_boarding_screen_4.dart';
import 'package:protocol_tele_flutter/src/features/onboarding/on_boarding_screen_5.dart';
import 'package:protocol_tele_flutter/src/features/onboarding/on_boarding_screen_6.dart';
import 'package:protocol_tele_flutter/src/features/signup/signup_binding.dart';
import 'package:protocol_tele_flutter/src/features/signup/signup_options_screen.dart';

class AppRoutes {
  static const String login = '/login';
  static const String register = '/register';
  static const String onBoarding1 = '/onBoarding1';
  static const String onBoarding2 = '/onBoarding2';
  static const String onBoarding3 = '/onBoarding3';
  static const String onBoarding4 = '/onBoarding4';
  static const String onBoarding5 = '/onBoarding5';
  static const String onBoarding6 = '/onBoarding6';
  static const String signupOptions = '/signupOptions';

  static String getLoginRoute() => login;

  static String getOnBoarding1Route() => onBoarding1;

  static String getOnBoarding2Route() => onBoarding2;

  static String getOnBoarding3Route() => onBoarding3;

  static String getOnBoarding4Route() => onBoarding4;

  static String getOnBoarding5Route() => onBoarding5;

  static String getOnBoarding6Route() => onBoarding6;

  static String getSignupOptionsRoute() => signupOptions;

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
      case onBoarding2:
        return GetPageRoute(
          settings: settings,
          routeName: getOnBoarding2Route(),
          page: () => const OnBoardingScreen2(),
        );
      case onBoarding3:
        return GetPageRoute(
          settings: settings,
          routeName: getOnBoarding3Route(),
          page: () => const OnBoardingScreen3(),
        );
      case onBoarding4:
        return GetPageRoute(
          settings: settings,
          routeName: getOnBoarding4Route(),
          page: () => const OnBoardingScreen4(),
        );
      case onBoarding5:
        return GetPageRoute(
          settings: settings,
          routeName: getOnBoarding1Route(),
          page: () => const OnBoardingScreen5(),
        );
      case onBoarding6:
        return GetPageRoute(
          settings: settings,
          routeName: getOnBoarding1Route(),
          page: () => const OnBoardingScreen6(),
        );
      case signupOptions:
        return GetPageRoute(
          settings: settings,
          routeName: getSignupOptionsRoute(),
          page: () => const SignupOptionsScreen(),
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
        GetPage(name: onBoarding1, page: () => const OnBoardingScreen1(), binding: OnBoardingBinding()),
        GetPage(name: onBoarding2, page: () => const OnBoardingScreen2(), binding: OnBoardingBinding()),
        GetPage(name: onBoarding3, page: () => const OnBoardingScreen3(), binding: OnBoardingBinding()),
        GetPage(name: onBoarding4, page: () => const OnBoardingScreen4(), binding: OnBoardingBinding()),
        GetPage(name: onBoarding5, page: () => const OnBoardingScreen5(), binding: OnBoardingBinding()),
        GetPage(name: onBoarding6, page: () => const OnBoardingScreen6(), binding: OnBoardingBinding()),
    GetPage(name: signupOptions, page: () => const SignupOptionsScreen(), binding: SignupBinding()),
  ];
}
