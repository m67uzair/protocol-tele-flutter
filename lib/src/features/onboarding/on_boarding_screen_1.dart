import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:protocol_tele_flutter/src/%20components/custom_button.dart';
import 'package:protocol_tele_flutter/src/%20components/custom_progress_indicator.dart';
import 'package:protocol_tele_flutter/src/%20components/custom_signup_widgets.dart';
import 'package:protocol_tele_flutter/src/core/config/routes.dart';
import 'package:protocol_tele_flutter/src/core/constants/app_color_constants.dart';
import 'package:protocol_tele_flutter/src/core/constants/dimension_constants.dart';
import 'package:protocol_tele_flutter/src/core/constants/string_constants.dart';
import 'package:protocol_tele_flutter/src/core/constants/style_constants.dart';
import 'package:protocol_tele_flutter/src/features/onboarding/on_boarding_controller.dart';

class OnBoardingScreen1 extends StatefulWidget {
  const OnBoardingScreen1({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen1> createState() => _OnBoardingScreen1State();
}

class _OnBoardingScreen1State extends State<OnBoardingScreen1> {
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
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          strProtocol,
          style: subtitleStyle.copyWith(color: AppColors.white),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: margin_12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: height_65,
                ),
                Text(
                  'Use your\nvoice any\nway you\nwant.',
                  style: titleStyle.copyWith(color: AppColors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: height_65,
                ),
                Text(
                  'Free unlimited calling & texting',
                  style: mediumHeading.copyWith(color: AppColors.white),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: margin_8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx(
                        () {
                          return CustomProgtressIndicator(value: onBoardingController.indicatorValue.value);
                        },
                      ),
                      const CustomProgtressIndicator(value: 0),
                      const CustomProgtressIndicator(value: 0),
                      const CustomProgtressIndicator(value: 0),
                      const CustomProgtressIndicator(value: 0),
                      const CustomProgtressIndicator(value: 0),
                      const CustomProgtressIndicator(value: 0),
                    ],
                  ),
                ),
                const CustomSignUpWidgets(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
