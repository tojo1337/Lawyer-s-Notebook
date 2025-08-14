import 'package:flutter/material.dart';
import 'package:lawyers_notebook/models/theme_preferance.dart';

class ThemeState extends ChangeNotifier {
  ThemePreferance _currentTheme = ThemePreferance.light;

  ThemePreferance get currentTheme {
    return _currentTheme;
  }

  set currnetTheme(ThemePreferance pref) {
    _currentTheme = pref;
    notifyListeners();
  }
}
