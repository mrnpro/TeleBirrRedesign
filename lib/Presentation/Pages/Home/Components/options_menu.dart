import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';

import '../../../SizeConfig/size_config.dart';
import '../../../constants.dart';

class OptionsMenu extends StatelessWidget {
  const OptionsMenu({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(kRadius),
                color: theme.colorScheme.secondary),
            height: 113,
            width: 110,
            child: Stack(
              children: [
                Positioned(
                  left: 41,
                  top: 39,
                  child: SvgIcon(
                    "assets/icons/arrow_back_ios.svg",
                    height: 27,
                    width: 15,
                    color: theme.primaryColor,
                  ),
                ),
                Positioned(
                  left: 41,
                  top: 24,
                  child: SvgIcon(
                    "assets/icons/arrow_back_ios.svg",
                    height: 27,
                    width: 15,
                    color: theme.primaryColor,
                  ),
                ),
                Positioned(
                    left: 35,
                    top: 82,
                    child: Text(
                      "Send",
                      style: theme.textTheme.button,
                    )),
              ],
            ),
          ),
          addHorizontalSpace(),
          Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(kRadius),
                color: theme.colorScheme.secondary),
            height: 113,
            width: 110,
            child: Stack(
              children: [
                Positioned(
                  left: 41,
                  top: 39,
                  child: SvgIcon(
                    "assets/icons/arrow_back_ios.svg",
                    height: 27,
                    width: 15,
                    color: theme.primaryColor,
                  ),
                ),
                Positioned(
                  left: 41,
                  top: 24,
                  child: SvgIcon(
                    "assets/icons/arrow_back_ios.svg",
                    height: 27,
                    width: 15,
                    color: theme.primaryColor,
                  ),
                ),
                Positioned(
                    left: 35,
                    top: 82,
                    child: Text(
                      "Receive",
                      style: theme.textTheme.button,
                    )),
              ],
            ),
          ),
          addHorizontalSpace(),
          Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(kRadius),
                color: theme.colorScheme.secondary),
            height: 113,
            width: 110,
            child: Stack(
              children: [
                Positioned(
                  left: 41,
                  top: 39,
                  child: SvgIcon(
                    "assets/icons/qr_code_scanner.svg",
                    height: 29,
                    width: 29,
                    color: theme.primaryColor,
                  ),
                ),
                Positioned(
                    left: 35,
                    top: 82,
                    child: Text(
                      "Scan Qr",
                      style: theme.textTheme.button,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
