import 'package:flutter/material.dart';
import 'package:protocol_tele_flutter/src/core/constants/app_color_constants.dart';
import 'package:protocol_tele_flutter/src/core/constants/dimension_constants.dart';
import 'package:protocol_tele_flutter/src/core/constants/string_constants.dart';
import 'package:protocol_tele_flutter/src/core/constants/style_constants.dart';

class OnBoardingScreen1 extends StatefulWidget {
  const OnBoardingScreen1({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen1> createState() => _OnBoardingScreen1State();
}

class _OnBoardingScreen1State extends State<OnBoardingScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          strProtocol,
          style: subtitleStyle,
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height_65,
            ),
            Text(
              'Use your\nvoice any\nway you\nwant.',
              style: titleStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: height_65,
            ),
            Text(
              'Free unlimited calling & texting',
              style: mediumHeading,
            ),
            SizedBox(
              height: height_120,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: margin_8),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomProgtressIndicator(value: 0.50),
                  CustomProgtressIndicator(value: 0),
                  CustomProgtressIndicator(value: 0),
                  CustomProgtressIndicator(value: 0),
                  CustomProgtressIndicator(value: 0),
                  CustomProgtressIndicator(value: 0),
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
                    backgroundColor: const MaterialStatePropertyAll(AppColors.lightBlue),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius_50)),
                    ),
                    padding: MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: margin_15)),
                    elevation: const MaterialStatePropertyAll(0),
                  ),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.black, fontSize: font_17, fontWeight: FontWeight.w500),
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
                style: TextStyle(color: Colors.grey, fontSize: font_16),
                children: [
                  TextSpan(
                    text: 'Log in',
                    style: TextStyle(color: Colors.white, fontSize: font_16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

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
        backgroundColor: const Color(0xFF4B4B4B),
      ),
    );
  }
}
