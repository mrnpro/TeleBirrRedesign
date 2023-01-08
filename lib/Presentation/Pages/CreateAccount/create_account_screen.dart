import 'package:flutter/material.dart';
import 'package:telebirr/Presentation/CommonWidgets/CustomAppBar/custom_app_bar.dart';
import 'package:telebirr/Presentation/Pages/CreateAccount/Components/create_account_body.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});
  static const String route = "/createAccount";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(appBarTxt: "Create Account", context: context),
      body: const SafeArea(
        child: CreateAccountBody(),
      ),
    );
  }
}
