import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';
import 'package:telebirr/Presentation/Pages/Home/Components/WidgetModels/services_model.dart';
import 'package:telebirr/Presentation/SizeConfig/size_config.dart';

import '../../../constants.dart';
import 'more_services_txt.dart';
import 'options_menu.dart';
import 'services_list.dart';
import 'top_big_box.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      children: [
        TopBigBox(theme: theme),
        addVerticalSpace(),
        OptionsMenu(theme: theme),
        MoreServicesTxt(theme: theme),
        ServicesList(theme: theme)
      ],
    );
  }
}
