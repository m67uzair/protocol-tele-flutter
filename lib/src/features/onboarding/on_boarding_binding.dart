import 'package:get/get.dart';
import 'package:protocol_tele_flutter/src/features/onboarding/on_boarding_controller.dart';

class OnBoardingBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<OnBoardingController>(OnBoardingController());
  }
}
