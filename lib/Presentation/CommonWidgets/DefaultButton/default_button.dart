import 'package:flutter/material.dart';

import '../../SizeConfig/size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.btnTxt,
    required this.onPressed,
  }) : super(key: key);
  final VoidCallback onPressed;
  final String btnTxt;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        height: 42,
        child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: theme.primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            onPressed: onPressed,
            child: SizedBox(
                height: 42,
                width: SizeConfig.screenWidth,
                child: Center(
                  child: Text(
                    btnTxt,
                    style:
                        theme.textTheme.button?.copyWith(color: Colors.white),
                  ),
                ))),
      ),
    );
  }
}
