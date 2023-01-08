import 'package:flutter/material.dart';
import 'package:telebirr/Presentation/Pages/Onboarding/Components/slider_screen.dart';
import 'package:telebirr/Presentation/SizeConfig/size_config.dart';

class OnBoardingSlider extends StatelessWidget {
  const OnBoardingSlider({
    Key? key,
    required ThemeData theme,
    required this.controller,
    required this.onPageChanged,
  })  : _theme = theme,
        super(key: key);

  final ThemeData _theme;
  final PageController controller;
  final Function(int) onPageChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView(
        onPageChanged: onPageChanged,
        controller: controller,
        children: [
          FirstSlider(theme: _theme),
          SecondSlider(theme: _theme),
          ThirdSlider(
            theme: _theme,
          )
        ],
      ),
    );
  }
}

class FirstSlider extends StatelessWidget {
  const FirstSlider({
    Key? key,
    required ThemeData theme,
  })  : _theme = theme,
        super(key: key);

  final ThemeData _theme;

  @override
  Widget build(BuildContext context) {
    return SliderScreen(
      theme: _theme,
      descriptionTxt: 'Save Other Users For Quick Transfers',
      dotsImagePath: "assets/images/three_dots_1.png",
      phoneImagePath: "assets/images/onboardingimg1.png",
    );
  }
}

class SecondSlider extends StatelessWidget {
  const SecondSlider({
    Key? key,
    required ThemeData theme,
  })  : _theme = theme,
        super(key: key);

  final ThemeData _theme;

  @override
  Widget build(BuildContext context) {
    return SliderScreen(
      theme: _theme,
      descriptionTxt: 'Send, Receive money and Scan QR codes Easily',
      dotsImagePath: "assets/images/three_dots_2.png",
      phoneImagePath: "assets/images/onboardingimg2.png",
    );
  }
}

class ThirdSlider extends StatelessWidget {
  const ThirdSlider({
    Key? key,
    required ThemeData theme,
  })  : _theme = theme,
        super(key: key);

  final ThemeData _theme;

  @override
  Widget build(BuildContext context) {
    return SliderScreen(
      theme: _theme,
      descriptionTxt: 'Many Payment Solutions In one APP telebirr!',
      dotsImagePath: "assets/images/three_dots_3.png",
      phoneImagePath: "assets/images/onboardingimg3.png",
    );
  }
}
