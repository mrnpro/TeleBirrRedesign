import 'package:flutter/material.dart';

PreferredSize customAppBar(
    {required String appBarTxt, required BuildContext context}) {
  ThemeData theme = Theme.of(context);
  return PreferredSize(
    preferredSize: const Size.fromHeight(120),
    child: SafeArea(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        Text(
          appBarTxt,
          style: theme.textTheme.headline6,
        ),
        const SizedBox(),
        const SizedBox()
      ]),
    ),
  );
}
