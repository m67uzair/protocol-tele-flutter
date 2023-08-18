import 'package:get/get.dart';
import 'package:protocol_tele_flutter/src/features/onboarding/on_boarding_screen_1.dart';
import 'package:protocol_tele_flutter/src/features/onboarding/on_boarding_screen_2.dart';
import 'package:protocol_tele_flutter/src/features/onboarding/on_boarding_screen_3.dart';
import 'package:protocol_tele_flutter/src/features/onboarding/on_boarding_screen_4.dart';
import 'package:protocol_tele_flutter/src/features/onboarding/on_boarding_screen_5.dart';
import 'package:protocol_tele_flutter/src/features/onboarding/on_boarding_screen_6.dart';

class OnBoardingController extends GetxController {
  RxDouble indicatorValue = RxDouble(0.0);
  RxInt currentScreenIndex = RxInt(1);

  void increaseIndicator() async {
    indicatorValue.value = 0.0;
    for (int i = 0; i <= 100; i++) {
      await Future.delayed(const Duration(milliseconds: 100));
      indicatorValue.value = i / 100;
    }
    nextScreen();
  }

  void nextScreen() {
    if (currentScreenIndex.value == 1) {
      currentScreenIndex.value = 2;
      Get.off(const OnBoardingScreen2());
    } else if (currentScreenIndex.value == 2) {
      currentScreenIndex.value = 3;
      Get.off(const OnBoardingScreen3());
    } else if (currentScreenIndex.value == 3) {
      currentScreenIndex.value = 4;
      Get.off(const OnBoardingScreen4());
    } else if (currentScreenIndex.value == 4) {
      currentScreenIndex.value = 5;
      Get.off(const OnBoardingScreen5());
    } else if (currentScreenIndex.value == 5) {
      currentScreenIndex.value = 6;
      Get.off(const OnBoardingScreen6());
    } else if (currentScreenIndex.value == 6) {
      Get.off(const OnBoardingScreen1());
    }
  }
}
