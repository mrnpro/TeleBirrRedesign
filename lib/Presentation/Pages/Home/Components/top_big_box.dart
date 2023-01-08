import 'package:flutter/material.dart';

import '../../../CommonWidgets/TeleBirrLogo/telebirr_white_logo.dart';
import '../../../SizeConfig/size_config.dart';
import '../../../constants.dart';

class TopBigBox extends StatelessWidget {
  const TopBigBox({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: SizeConfig.screenWidth,
      height: 300,
      decoration: BoxDecoration(
        color: theme.primaryColor,
        borderRadius:
            const BorderRadius.only(bottomLeft: kRadius, bottomRight: kRadius),
      ),
      child: SafeArea(
        child: Column(
          children: [
            const LogoNotification(),
            WelcomeText(theme: theme),
            addVerticalSpace(size: 34),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SmallAccountBox(
                  number: "650.00",
                  txt: "Main\nBalance",
                ),
                addHorizontalSpace(),
                const SmallAccountBox(
                  number: "***",
                  txt: "Reward\nBalance",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SmallAccountBox extends StatelessWidget {
  const SmallAccountBox({
    Key? key,
    required this.number,
    required this.txt,
  }) : super(key: key);
  final String number;
  final String txt;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(15),
      height: 104,
      width: SizeConfig.getProportionalWidth(inputWidth: 2.4),
      decoration: const BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.all(kRadius)),
      child: Column(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                txt,
                style: theme.textTheme.subtitle1,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    number.toString(),
                    style: theme.textTheme.headline6,
                  )),
              const Icon(
                Icons.remove_red_eye,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "Welcome, Alfatiha ",
        style: theme.textTheme.headline5?.copyWith(color: Colors.white),
      ),
    );
  }
}

class LogoNotification extends StatelessWidget {
  const LogoNotification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(height: 50, child: TeleBirrWhiteLogo()),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications),
          color: Colors.white,
        )
      ],
    );
  }
}
