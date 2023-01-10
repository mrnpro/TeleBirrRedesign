import 'package:flutter/material.dart';

import 'package:svg_icon/svg_icon.dart';
import 'package:telebirr/Presentation/Pages/Home/home_screen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});
  static const String route = "/bottomNav";
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: theme.primaryColor,
          items: const [
            BottomNavigationBarItem(
                icon: SvgIcon("assets/icons/wallet.svg"), label: "wallet"),
            BottomNavigationBarItem(
                icon: SvgIcon("assets/icons/swap_horiz.svg"),
                label: "Transactions"),
            BottomNavigationBarItem(
                icon: SvgIcon("assets/icons/person.svg"), label: "Account")
          ]),
      body: const HomeScreen(),
    );
  }
}
