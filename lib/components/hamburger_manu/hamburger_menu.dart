import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lawyers_notebook/models/hamburder_menu_entries.dart';
import 'package:lawyers_notebook/models/theme_preferance.dart';
import 'package:lawyers_notebook/themes/theme_design.dart';
import 'package:lawyers_notebook/views/help_view.dart';

class HamburderMenu extends StatefulWidget {
  final ThemePreferance preferance;

  const HamburderMenu({super.key, required this.preferance});

  @override
  State<HamburderMenu> createState() => _HamburgerMenu();
}

class _HamburgerMenu extends State<HamburderMenu> {
  void onSearch() {
    //
  }

  void onMyCases() {
    //
  }

  void onCasesBreakDown() {
    //
  }

  void onPrint() {
    //
  }

  void onFreeStatement() {
    //
  }

  void onMissedDate() {
    //
  }

  void onSettings() {
    //
  }

  void onShare() {
    //
  }

  void onAbout() {
    //
  }

  void onHelp(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const HelpView(title: "Help View"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<HamburderMenuEntries>(
      icon: FaIcon(
        FontAwesomeIcons.bars,
        color: ThemeDesign().actionButtonColor(widget.preferance),
        size: 20,
      ),
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<HamburderMenuEntries>>[
            PopupMenuItem(
              value: HamburderMenuEntries.search,
              onTap: () => onSearch(),
              child: const Text('Search'),
            ),
            PopupMenuItem(
              value: HamburderMenuEntries.myCases,
              onTap: () => onMyCases(),
              child: const Text('My Cases'),
            ),
            PopupMenuItem(
              value: HamburderMenuEntries.caseBreakDown,
              onTap: () => onCasesBreakDown(),
              child: const Text('Case Break Down'),
            ),
            PopupMenuItem(
              value: HamburderMenuEntries.print,
              onTap: () => onPrint(),
              child: const Text('Print'),
            ),
            PopupMenuItem(
              value: HamburderMenuEntries.freeDtatement,
              onTap: () => onFreeStatement(),
              child: const Text('Free Statement'),
            ),
            PopupMenuItem(
              value: HamburderMenuEntries.missedDate,
              onTap: () => onMissedDate(),
              child: const Text('Missed Avd. Date'),
            ),
            PopupMenuItem(
              value: HamburderMenuEntries.settings,
              onTap: () => onSettings(),
              child: const Text('Settings'),
            ),
            PopupMenuItem(
              value: HamburderMenuEntries.search,
              onTap: () => onShare(),
              child: const Text('Share'),
            ),
            PopupMenuItem(
              value: HamburderMenuEntries.about,
              onTap: () => onAbout(),
              child: const Text('About'),
            ),
            PopupMenuItem(
              value: HamburderMenuEntries.help,
              onTap: () => onHelp(context),
              child: const Text('Help'),
            ),
          ],
    );
  }
}
