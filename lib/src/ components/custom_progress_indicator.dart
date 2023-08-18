import 'package:flutter/material.dart';
import 'package:protocol_tele_flutter/src/core/constants/app_color_constants.dart';
import 'package:protocol_tele_flutter/src/core/constants/dimension_constants.dart';

class CustomProgtressIndicator extends StatelessWidget {
  const CustomProgtressIndicator({
    super.key,
    required this.value,
  });

  final double value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width_45,
      child: LinearProgressIndicator(
        value: value,
        color: AppColors.white,
        minHeight: height_4,
        backgroundColor: const Color(0xFF62AA92),
      ),
    );
  }
}
