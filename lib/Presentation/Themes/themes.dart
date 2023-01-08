import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  final ThemeData _lightTheme = ThemeData(
      primaryColor: const Color(0xFF008BE5),
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: Color(0xFF008BE5),
        onPrimary: Color(0xFF005EB2),
        secondary: Color.fromRGBO(247, 247, 247, 10),
        onSecondary: Color(0xF4F4F4CC),
        error: Colors.red,
        onError: Colors.red,
        background: Colors.white,
        onBackground: Colors.white,
        surface: Colors.white,
        onSurface: Colors.white,
      ),
      scaffoldBackgroundColor: Colors.white,
      fontFamily: GoogleFonts.poppins().fontFamily,
      inputDecorationTheme: InputDecorationTheme(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
      textTheme: const TextTheme(
        headline4: TextStyle(
          fontSize: 33,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
        ),
        headline5: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
        ),
        headline6: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.25,
        ),
        subtitle1: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
        ),
        subtitle2: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.25,
        ),
        bodyText1: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
        ),
        bodyText2: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
        ),
        button: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.25,
        ),
        caption: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
        ),
        overline: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
        ),
      ));
  get getLightTheme => _lightTheme;
}
