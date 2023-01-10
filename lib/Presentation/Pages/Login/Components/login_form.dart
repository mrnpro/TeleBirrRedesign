import 'package:flutter/material.dart';
import 'package:telebirr/Presentation/Pages/BottomNavigation/bottom_nav_bar.dart';
import 'package:telebirr/Presentation/Pages/Home/home_screen.dart';

import '../../../CommonWidgets/DefaultButton/default_button.dart';
import '../../../SizeConfig/size_config.dart';

// ignore: must_be_immutable
class LoginForm extends StatelessWidget {
  LoginForm({
    Key? key,
  }) : super(key: key);

  TextEditingController mobilePhoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    EdgeInsets kHorizontalPadding = const EdgeInsets.symmetric(horizontal: 16);
    return Form(
        child: Column(
      children: [
        Padding(
          padding: kHorizontalPadding,
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Mobile Number",
                style: theme.textTheme.caption,
              )),
        ),
        Padding(
          padding: kHorizontalPadding,
          child: TextField(
            keyboardType: TextInputType.phone,
            controller: mobilePhoneController,
            decoration: const InputDecoration(
              hintText: "0900000000",
            ),
          ),
        ),
        addVerticalSpace(size: 27),
        Padding(
          padding: kHorizontalPadding,
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Password",
                style: theme.textTheme.caption,
              )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            obscureText: true,
            controller: passwordController,
            decoration: const InputDecoration(
              hintText: "********",
            ),
          ),
        ),
        Padding(
          padding: kHorizontalPadding,
          child: Row(
            children: [
              const Text("Forgot password?"),
              TextButton(onPressed: () {}, child: const Text("Recover Account"))
            ],
          ),
        ),
        addVerticalSpace(size: 54),
        DefaultButton(
            btnTxt: "Login",
            onPressed: () {
              Navigator.pushNamed(context, BottomNavBar.route);
            })
      ],
    ));
  }
}
