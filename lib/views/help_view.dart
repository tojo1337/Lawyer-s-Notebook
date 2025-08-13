import 'package:flutter/material.dart';
import 'package:lawyers_notebook/components/default_header/default_header.dart';
import 'package:lawyers_notebook/models/theme_preferance.dart';

class HelpView extends StatefulWidget {
  const HelpView({super.key, required this.title});

  final String title;

  @override
  State<HelpView> createState() => _HelpView();
}

class _HelpView extends State<HelpView> {
  void doNothing() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Would be better if the theme is handled from a state or something
      appBar: DefaultHeader(
        writtenText: "Help",
        preferance: ThemePreferance.dark,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to the help view',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
