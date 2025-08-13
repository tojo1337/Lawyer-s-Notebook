import 'package:flutter/material.dart';
import 'package:lawyers_notebook/components/header/my_app_bar.dart';
import 'package:lawyers_notebook/models/theme_preferance.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key, required this.title});

  final String title;

  @override
  State<HomeView> createState() => _HomeView();
}

class _HomeView extends State<HomeView> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void doNothing() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Would be better if the theme is handled from a state or something
      appBar: MyAppBar(preferance: ThemePreferance.dark),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
              style: TextStyle(color: Colors.black),
            ),
            Text('$_counter', style: TextStyle(color: Colors.black)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
