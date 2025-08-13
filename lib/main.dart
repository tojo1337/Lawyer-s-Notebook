import 'package:flutter/material.dart';
import 'package:lawyers_notebook/models/theme_preferance.dart';
import 'package:lawyers_notebook/themes/theme_design.dart';
import 'package:lawyers_notebook/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lawyer\'s Notebook',
      theme: ThemeDesign().getTheme(ThemePreferance.dark),
      home: const HomeView(title: 'Lawyer\'s Notebook Home Page'),
    );
  }
}
