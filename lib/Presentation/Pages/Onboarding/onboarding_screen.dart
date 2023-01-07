import 'package:flutter/material.dart';

import 'package:telebirr/Presentation/Pages/Onboarding/Components/onboarding_body.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});
  static const String route = "/onBoarding";
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: OnBoardingBody(),
      ),
    );
  }
}
