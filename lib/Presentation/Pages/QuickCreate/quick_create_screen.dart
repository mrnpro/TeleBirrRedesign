import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:telebirr/Presentation/CommonWidgets/CustomAppBar/custom_app_bar.dart';
import 'package:telebirr/Presentation/Pages/QuickCreate/Components/quick_create_body.dart';

class QuickCreateScreen extends StatelessWidget {
  const QuickCreateScreen({super.key});
  static const String route = "/quickCreateScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(appBarTxt: "Quick Create", context: context),
      body: const SafeArea(child: QuickCreateBody()),
    );
  }
}
