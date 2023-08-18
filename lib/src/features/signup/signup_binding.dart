import 'package:get/get.dart';
import 'package:protocol_tele_flutter/src/features/signup/signup_controller.dart';

class SignupBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<SignUpController>(SignUpController());
  }
}
