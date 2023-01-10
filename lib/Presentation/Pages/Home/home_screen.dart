import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';

import 'package:telebirr/Presentation/Pages/Home/Components/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String route = "/homeScreen";
  @override
  Widget build(BuildContext context) {
    return const HomeBody();
  }
}
