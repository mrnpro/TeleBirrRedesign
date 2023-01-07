import 'package:flutter/material.dart';

import '../../SizeConfig/size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.btnTxt,
  }) : super(key: key);

  final String btnTxt;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: theme.primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: () {},
        child: SizedBox(
            height: 42,
            width: SizeConfig.screenWidth,
            child: Center(
              child: Text(
                btnTxt,
                style: theme.textTheme.button?.copyWith(color: Colors.white),
              ),
            )));
  }
}
