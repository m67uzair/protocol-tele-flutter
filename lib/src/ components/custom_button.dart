import 'package:flutter/material.dart';
import 'package:protocol_tele_flutter/src/core/constants/app_color_constants.dart';
import 'package:protocol_tele_flutter/src/core/constants/dimension_constants.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    buttonColor = AppColors.lightBlue,
    textColor = AppColors.white,
    required this.radius,
    required this.text,
  });

  Color? buttonColor;
  Color? textColor;
  final double radius;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(buttonColor),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
        ),
        padding: MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: margin_15)),
        elevation: const MaterialStatePropertyAll(0),
      ),
      child: Text(
        text,
        style: TextStyle(color: textColor, fontSize: font_17, fontWeight: FontWeight.w500),
      ),
    );
  }
}
