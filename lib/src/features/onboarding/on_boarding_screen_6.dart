import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:protocol_tele_flutter/src/%20components/custom_progress_indicator.dart';
import 'package:protocol_tele_flutter/src/core/constants/app_color_constants.dart';
import 'package:protocol_tele_flutter/src/core/constants/dimension_constants.dart';
import 'package:protocol_tele_flutter/src/core/constants/font_weight_constants.dart';
import 'package:protocol_tele_flutter/src/core/constants/string_constants.dart';
import 'package:protocol_tele_flutter/src/core/constants/style_constants.dart';
import 'package:protocol_tele_flutter/src/features/onboarding/on_boarding_controller.dart';

class OnBoardingScreen6 extends StatefulWidget {
  const OnBoardingScreen6({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen6> createState() => _OnBoardingScreen6State();
}

class _OnBoardingScreen6State extends State<OnBoardingScreen6> {

  OnBoardingController onBoardingController = Get.find();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      onBoardingController.increaseIndicator();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.green,
      appBar: AppBar(
        title: Text(
          strProtocol,
          style: subtitleStyle,
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: AppColors.green,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: margin_12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: height_25),
                  SizedBox(
                    height: 180,
                    width: 220,
                    child: Image.asset(
                      'assets/images/onboard_6.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: height_30,
                  ),
                  Text(
                    'And add high-speed 5G/LTE data as you need it',
                    style: subtitleStyle.copyWith(fontSize: font_30, fontWeight: fontWeight600),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: margin_8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomProgtressIndicator(value: 1),
                      const CustomProgtressIndicator(value: 1),
                      const CustomProgtressIndicator(value: 1),
                      const CustomProgtressIndicator(value: 1),
                      const CustomProgtressIndicator(value: 1),
                      Obx(
                            () {
                          return CustomProgtressIndicator(value: onBoardingController.indicatorValue.value);
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height_15,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: margin_8),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll(AppColors.black),
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(radius_50),
                          ),
                        ),
                        padding: MaterialStatePropertyAll(
                          EdgeInsets.symmetric(vertical: margin_15),
                        ),
                        elevation: const MaterialStatePropertyAll(0),
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.white, fontSize: font_17, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height_15,
                ),
                RichText(
                  text: TextSpan(
                    text: "Already have an account? ",
                    style: TextStyle(color: Colors.black54, fontSize: font_16),
                    children: [
                      TextSpan(
                        text: 'Log in',
                        style: TextStyle(color: AppColors.black, fontSize: font_16, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height_15,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
