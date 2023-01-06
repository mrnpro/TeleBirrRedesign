import 'package:flutter/material.dart';

import 'Components/splash_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static const String route = '/splashRoute';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashBody(),
    );
  }
}
