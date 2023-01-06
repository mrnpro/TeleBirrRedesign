import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  final ThemeData _lightTheme = ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
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
