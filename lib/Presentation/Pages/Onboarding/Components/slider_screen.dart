import 'package:flutter/material.dart';
import 'package:telebirr/Presentation/SizeConfig/size_config.dart';

class SliderScreen extends StatelessWidget {
  const SliderScreen({
    Key? key,
    required ThemeData theme,
    required this.phoneImagePath,
    required this.dotsImagePath,
    required this.descriptionTxt,
  })  : _theme = theme,
        super(key: key);

  final ThemeData _theme;
  final String phoneImagePath;
  final String dotsImagePath;
  final String descriptionTxt;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(children: [
        Container(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          decoration: BoxDecoration(
            border: Border.all(color: _theme.primaryColor),
            borderRadius: BorderRadius.circular(27),
          ),
          width: SizeConfig.getProportionalWidth(inputWidth: 1.2),
          height: 336,
          child: Image.asset(
            phoneImagePath,
            fit: BoxFit.fill,
          ),
        ),
        addVerticalSpace(size: 83),
        Image.asset(dotsImagePath),
        addVerticalSpace(size: 31),
        Text(descriptionTxt),
      ]),
    );
  }
}
