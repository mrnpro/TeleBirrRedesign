import 'package:flutter/material.dart';
import 'package:telebirr/Presentation/Pages/Splash/splash_screen.dart';

class GeneratedRoute {
  static Route<dynamic> route(RouteSettings settings) {
    switch (settings.name) {
      case SplashScreen.route:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      default:
        return MaterialPageRoute(
            builder: (_) => const Center(
                  child: Text("no defined route"),
                ));
    }
  }
}
