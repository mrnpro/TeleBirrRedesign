import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:telebirr/Presentation/Pages/Home/Components/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String route = "/homeScreen";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeBody(),
    );
  }
}
