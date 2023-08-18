import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:protocol_tele_flutter/src/%20components/custom_button.dart';
import 'package:protocol_tele_flutter/src/%20components/custom_progress_indicator.dart';
import 'package:protocol_tele_flutter/src/core/config/routes.dart';
import 'package:protocol_tele_flutter/src/core/constants/app_color_constants.dart';
import 'package:protocol_tele_flutter/src/core/constants/dimension_constants.dart';
import 'package:protocol_tele_flutter/src/core/constants/font_weight_constants.dart';
import 'package:protocol_tele_flutter/src/core/constants/string_constants.dart';
import 'package:protocol_tele_flutter/src/core/constants/style_constants.dart';
import 'package:protocol_tele_flutter/src/features/onboarding/on_boarding_controller.dart';

class SignupOptionsScreen extends StatelessWidget {
  const SignupOptionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/signup_options.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: margin_15),
              child: SizedBox(
                width: double.infinity,
                child: CustomButton(
                  radius: 0,
                  text: 'Sign Up',
                  buttonColor: AppColors.purple,
                ),
              ),
            ),
            SizedBox(
              height: height_15,
            ),
            RichText(
              text: TextSpan(
                text: "Already have an account? ",
                style: TextStyle(color: Colors.white, fontSize: font_16),
                children: [
                  TextSpan(
                    text: 'Log in',
                    style: TextStyle(color: Colors.white, fontSize: font_16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(height: height_15),
            Text(
              'Made with ♡ in Pakistan',
              style: TextStyle(color: Colors.white, fontSize: font_16, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: height_15),
          ],
        ),
      ),
    );
  }
}
