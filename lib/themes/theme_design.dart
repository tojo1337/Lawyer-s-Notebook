import 'package:flutter/material.dart';
import 'package:lawyers_notebook/models/theme_preferance.dart';

class ThemeDesign {
  final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
    textTheme: TextTheme(
      headlineLarge: TextStyle(color: Colors.black),
      headlineMedium: TextStyle(color: Colors.black),
      headlineSmall: TextStyle(color: Colors.black),
      bodyLarge: TextStyle(color: Colors.black),
      bodyMedium: TextStyle(color: Colors.black),
      titleLarge: TextStyle(color: Colors.black),
      titleMedium: TextStyle(color: Colors.black),
      titleSmall: TextStyle(color: Colors.black),
    ),
  );

  final ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    textTheme: TextTheme(
      headlineLarge: TextStyle(color: Colors.white),
      headlineMedium: TextStyle(color: Colors.white),
      headlineSmall: TextStyle(color: Colors.white),
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white),
      titleLarge: TextStyle(color: Colors.white),
      titleMedium: TextStyle(color: Colors.white),
      titleSmall: TextStyle(color: Colors.white),
    ),
  );

  final ButtonStyle headerOutlineButtonLight = OutlinedButton.styleFrom(
    side: BorderSide(color: Colors.black),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  );

  final ButtonStyle headerOutlineButtonDark = OutlinedButton.styleFrom(
    side: BorderSide(color: Colors.white),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  );

  ThemeData getTheme(ThemePreferance themePreferance) {
    var themeData = lightTheme;
    switch (themePreferance) {
      case ThemePreferance.light:
        themeData = lightTheme;
        break;
      case ThemePreferance.dark:
        themeData = darkTheme;
        break;
    }
    return themeData;
  }

  ButtonStyle getHeaderButtonStyle(ThemePreferance preferance) {
    var styleData = headerOutlineButtonLight;
    switch (preferance) {
      case ThemePreferance.light:
        styleData = headerOutlineButtonLight;
        break;
      case ThemePreferance.dark:
        styleData = headerOutlineButtonDark;
        break;
    }
    return styleData;
  }

  Color actionButtonColor(ThemePreferance pref) =>
      pref == ThemePreferance.light ? Colors.black : Colors.white;
}
