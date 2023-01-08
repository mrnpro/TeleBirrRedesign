import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:telebirr/Presentation/CommonWidgets/DefaultButton/default_button.dart';
import 'package:telebirr/Presentation/CommonWidgets/TeleBirrLogo/telebirr_logo.dart';
import 'package:telebirr/Presentation/Pages/QuickCreate/quick_create_screen.dart';
import 'package:telebirr/Presentation/SizeConfig/size_config.dart';

class CreateAccountBody extends StatelessWidget {
  const CreateAccountBody({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return SizedBox(
      height: SizeConfig.screenHeight,
      width: SizeConfig.screenWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                addVerticalSpace(size: 57.78),
                const TeleBirrLogo(),
                addVerticalSpace(size: 57.78),
                Text(
                  "If you choose Quick Create Account, Ethio telecom will auto-fill your profile",
                  style: theme.textTheme.bodyText1,
                ),
              ],
            ),
          ),
          const SizedBox(),
          Column(
            children: [
              DefaultButton(
                  btnTxt: "Quick Create Account",
                  onPressed: () {
                    Navigator.pushNamed(context, QuickCreateScreen.route);
                  }),
              addVerticalSpace(),
              DefaultButton(btnTxt: "Self-Create Account", onPressed: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
