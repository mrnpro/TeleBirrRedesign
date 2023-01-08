import 'package:flutter/material.dart';
import 'package:telebirr/Presentation/Pages/Login/Components/login_body.dart';
import '../../CommonWidgets/CustomAppBar/custom_app_bar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const String route = "/loginScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(appBarTxt: "Login", context: context),
      body: const LoginBody(),
    );
  }
}
