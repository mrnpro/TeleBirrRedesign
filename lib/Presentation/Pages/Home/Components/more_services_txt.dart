import 'package:flutter/material.dart';

class MoreServicesTxt extends StatelessWidget {
  const MoreServicesTxt({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Text("More Services", style: theme.textTheme.headline6)),
    );
  }
}
