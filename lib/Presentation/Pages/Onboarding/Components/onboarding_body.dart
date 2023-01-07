import 'package:flutter/material.dart';

import 'package:telebirr/Presentation/CommonWidgets/TeleBirrLogo/telebirr_logo.dart';
import 'package:telebirr/Presentation/SizeConfig/size_config.dart';

import '../../../CommonWidgets/DefaultButton/default_button.dart';
import 'onboarding_slider.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    EdgeInsets kPadding =
        const EdgeInsets.symmetric(horizontal: 16, vertical: 31);
    return SingleChildScrollView(
      child: SizedBox(
        width: SizeConfig.screenWidth,
        child: Column(
          children: [
            Padding(
              padding: kPadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                      width: 154.39, height: 59.22, child: TeleBirrLogo()),
                  Row(
                    children: [
                      const Text("Language"),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.keyboard_arrow_down))
                    ],
                  )
                ],
              ),
            ),
            OnBoardingSlider(theme: theme),
            addVerticalSpace(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: DefaultButton(btnTxt: "Next"),
            ),
            addVerticalSpace(size: 20),
            TextButton(
                onPressed: () {},
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
