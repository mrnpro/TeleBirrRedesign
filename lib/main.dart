import 'package:flutter/material.dart';
import 'package:telebirr/Presentation/Pages/Splash/splash_screen.dart';
import 'package:telebirr/Presentation/Routes/router.dart';

import 'Presentation/Themes/themes.dart';

void main() {
  //setup dependency injection while the app starts.

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late CustomTheme _theme;
  @override
  void initState() {
    _theme = CustomTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TeleBirr Redesign',
        onGenerateRoute: GeneratedRoute.route,
        initialRoute: SplashScreen.route,
        theme: _theme.getLightTheme);
  }
}
