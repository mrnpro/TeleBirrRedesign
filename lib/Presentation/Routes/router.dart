import 'package:flutter/material.dart';
import 'package:telebirr/Presentation/Pages/CreateAccount/create_account_screen.dart';
import 'package:telebirr/Presentation/Pages/Home/home_screen.dart';
import 'package:telebirr/Presentation/Pages/Login/login_screen.dart';
import 'package:telebirr/Presentation/Pages/Onboarding/onboarding_screen.dart';
import 'package:telebirr/Presentation/Pages/QuickCreate/quick_create_screen.dart';
import 'package:telebirr/Presentation/Pages/Splash/splash_screen.dart';

class GeneratedRoute {
  static Route<dynamic> route(RouteSettings settings) {
    switch (settings.name) {
      case SplashScreen.route:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case OnBoardingScreen.route:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case LoginScreen.route:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case CreateAccount.route:
        return MaterialPageRoute(builder: (_) => const CreateAccount());
      case QuickCreateScreen.route:
        return MaterialPageRoute(builder: (_) => const QuickCreateScreen());
      case HomeScreen.route:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => const Center(
                  child: Text("no defined route"),
                ));
    }
  }
}
