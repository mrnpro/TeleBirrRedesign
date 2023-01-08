import 'package:flutter/material.dart';

import 'package:telebirr/Presentation/CommonWidgets/TeleBirrLogo/telebirr_logo.dart';
import 'package:telebirr/Presentation/Pages/CreateAccount/create_account_screen.dart';
import 'package:telebirr/Presentation/SizeConfig/size_config.dart';

import '../../../CommonWidgets/DefaultButton/default_button.dart';
import '../../Login/login_screen.dart';
import 'onboarding_slider.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

int currentIndex = 0;

class _OnBoardingBodyState extends State<OnBoardingBody> {
  @override
  Widget build(BuildContext context) {
    final PageController pageController =
        PageController(initialPage: 0, keepPage: false);

    ThemeData theme = Theme.of(context);
    EdgeInsets kPadding =
        const EdgeInsets.symmetric(horizontal: 16, vertical: 31);
    return SingleChildScrollView(
      child: SizedBox(
        width: SizeConfig.screenWidth,
        child: Column(
          children: [
            TeleBirrAppBar(kPadding: kPadding),
            OnBoardingSlider(
                theme: theme,
                controller: pageController,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                }),
            addVerticalSpace(),
            if (currentIndex >= 2)
              DefaultButton(
                  btnTxt: "Create New Account",
                  onPressed: () {
                    Navigator.pushNamed(context, CreateAccount.route);
                  })
            else
              DefaultButton(
                  btnTxt: "Next",
                  onPressed: () {
                    setState(() {
                      currentIndex += 1;
                      pageController.animateToPage(
                        currentIndex,
                        duration: const Duration(milliseconds: 350),
                        curve: Curves.easeIn,
                      );
                    });
                  }),

            addVerticalSpace(size: 20),
            if (currentIndex >= 2)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already Have An Account?",
                    style: TextStyle(fontSize: 12),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, LoginScreen.route);
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(fontSize: 12),
                      ))
                ],
              )
            else
              TextButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = 2;
                      pageController.animateToPage(
                        currentIndex,
                        duration: const Duration(milliseconds: 350),
                        curve: Curves.easeIn,
                      );
                    });
                  },
                  child: Center(
                    child: Text(
                      "Skip",
                      style: theme.textTheme.button
                          ?.copyWith(color: theme.primaryColor),
                    ),
                  )),
            //
          ],
        ),
      ),
    );
  }
}

class TeleBirrAppBar extends StatelessWidget {
  const TeleBirrAppBar({
    Key? key,
    required this.kPadding,
  }) : super(key: key);

  final EdgeInsets kPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 154.39, height: 59.22, child: TeleBirrLogo()),
          Row(
            children: [
              const Text("Language"),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_down))
            ],
          )
        ],
      ),
    );
  }
}
