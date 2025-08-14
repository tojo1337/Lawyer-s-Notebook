import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lawyers_notebook/components/header/my_app_bar.dart';
import 'package:lawyers_notebook/models/theme_preferance.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key, required this.title});

  final String title;

  @override
  State<HomeView> createState() => _HomeView();
}

class _HomeView extends State<HomeView> {
  List<String> listOfCases = [];

  void doNothing() {}

  void searchAction(BuildContext context) {
    // Add the code in here
  }

  Widget showEmptyOption(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: null,
          icon: FaIcon(FontAwesomeIcons.file, color: Colors.purple),
          style: IconButton.styleFrom(
            backgroundColor: Color.fromARGB(15, 128, 0, 128),
            disabledBackgroundColor: Color.fromARGB(15, 128, 0, 128),
          ),
        ),
        Text(
          "There is no case registered here on this date",
          style: TextStyle(color: Colors.black),
        ),
        Text(
          "Please add a new case to display here",
          style: TextStyle(color: Colors.black),
        ),
        OutlinedButton(
          onPressed: doNothing,
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(5),
            ),
            backgroundColor: Colors.purple,
          ),
          child: const Text("New Case", style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }

  Widget showListOfCases(BuildContext context) {
    return Text("Filled", style: TextStyle(color: Colors.black));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Would be better if the theme is handled from a state or something
      appBar: MyAppBar(preferance: ThemePreferance.dark),
      body: Center(
        child: listOfCases.isEmpty
            ? showEmptyOption(context)
            : showListOfCases(context),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => searchAction(context),
        tooltip: 'Search Cases',
        backgroundColor: Colors.purple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(90),
        ),
        child: FaIcon(FontAwesomeIcons.magnifyingGlass, color: Colors.white),
      ),
    );
  }
}
