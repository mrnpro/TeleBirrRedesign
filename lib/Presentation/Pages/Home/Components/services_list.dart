import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'WidgetModels/services_model.dart';

class ServicesList extends StatelessWidget {
  const ServicesList({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: services.length,
        itemBuilder: (context, index) =>
            ServiceListCard(theme: theme, index: index, onPressed: () {}),
      ),
    );
  }
}

class ServiceListCard extends StatelessWidget {
  const ServiceListCard({
    Key? key,
    required this.theme,
    required this.index,
    required this.onPressed,
  }) : super(key: key);

  final ThemeData theme;
  final int index;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, bottom: 16, right: 16),
      child: InkWell(
        onTap: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: theme.colorScheme.secondary,
                  borderRadius: const BorderRadius.all(kRadius)),
              height: 45,
              width: 45,
              child: Center(
                  child: Image.asset(
                services[index].imgPath1,
              )),
            ),
            SizedBox(
              width: 160,
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(services[index].itemText,
                      style: theme.textTheme.subtitle1)),
            ),
            const SizedBox(),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
          ],
        ),
      ),
    );
  }
}
