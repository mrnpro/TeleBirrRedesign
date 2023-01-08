import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:telebirr/Presentation/CommonWidgets/DefaultButton/default_button.dart';
import 'package:telebirr/Presentation/SizeConfig/size_config.dart';

class QuickCreateBody extends StatelessWidget {
  const QuickCreateBody({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextEditingController mobilePhoneController = TextEditingController();
    EdgeInsets kHorizontalPadding = const EdgeInsets.symmetric(horizontal: 16);
    return SingleChildScrollView(
      child: Column(
        children: [
          addVerticalSpace(size: 51),
          Form(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
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
                ],
              ),
              DefaultButton(btnTxt: "Next", onPressed: () {})
            ],
          ))
        ],
      ),
    );
  }
}
