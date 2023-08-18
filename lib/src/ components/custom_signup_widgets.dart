import 'package:flutter/material.dart';
import 'package:protocol_tele_flutter/src/%20components/custom_button.dart';
import 'package:protocol_tele_flutter/src/core/constants/app_color_constants.dart';
import 'package:protocol_tele_flutter/src/core/constants/dimension_constants.dart';

class CustomSignUpWidgets extends StatelessWidget {
  const CustomSignUpWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: height_15,
        ),
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: margin_8),
            child: CustomButton(
              text: 'Sign Up',
              buttonColor: AppColors.purple,
              radius: radius_50,
            ),
          ),
        ),
        SizedBox(
          height: height_15,
        ),
        RichText(
          text: TextSpan(
            text: "Already have an account? ",
            style: TextStyle(color: Colors.grey, fontSize: font_16),
            children: [
              TextSpan(
                text: 'Log in',
                style: TextStyle(color: Colors.white, fontSize: font_16, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        SizedBox(height: height_15),
      ],
    );
  }
}
