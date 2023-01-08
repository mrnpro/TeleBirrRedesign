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
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
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
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(services[index].itemText,
                      style: theme.textTheme.subtitle1)),
              const SizedBox(),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
            ],
          ),
        ),
      ),
    );
  }
}
