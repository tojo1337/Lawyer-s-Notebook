import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lawyers_notebook/components/hamburger_manu/hamburger_menu.dart';
import 'package:lawyers_notebook/models/day_of_the_week.dart';
import 'package:lawyers_notebook/models/month_of_the_year.dart';
import 'package:lawyers_notebook/models/theme_preferance.dart';
import 'package:lawyers_notebook/themes/theme_design.dart';
import 'package:lawyers_notebook/views/ecourt_view.dart';
import 'package:lawyers_notebook/views/new_case.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  final ThemePreferance preferance;

  const MyAppBar({super.key, required this.preferance});

  @override
  State<StatefulWidget> createState() => _MyAppBar();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _MyAppBar extends State<MyAppBar> {
  String getCurrentDate() {
    var weekDay = DateTime.now().weekday;
    var dayName = "";
    for (var entry in WeekDays.values) {
      if (entry.value == weekDay) {
        dayName = entry.name;
        break;
      }
    }
    return dayName;
  }

  String getDetailedDate() {
    var dtObj = DateTime.now();
    var formattedDate =
        "${dtObj.day}-${MonthOfTheYear.nameFromId(dtObj.month)}-${dtObj.year}";
    return formattedDate;
  }

  void navToNew(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const NewCase()),
    );
  }

  void navToEcourt(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const EcourtView()),
    );
  }

  void doNothing() {}

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.purple,
      leading: Center(
        child: Text(
          getCurrentDate().toUpperCase(),
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      title: OutlinedButton(
        onPressed: doNothing,
        style: ThemeDesign().getHeaderButtonStyle(widget.preferance),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                getDetailedDate(),
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              FaIcon(FontAwesomeIcons.chevronDown, color: Colors.white),
            ],
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () => navToNew(context),
          icon: FaIcon(
            FontAwesomeIcons.plus,
            color: ThemeDesign().actionButtonColor(widget.preferance),
            size: 20,
          ),
        ),
        IconButton(
          onPressed: () => navToEcourt(context),
          icon: FaIcon(
            FontAwesomeIcons.scaleBalanced,
            color: ThemeDesign().actionButtonColor(widget.preferance),
            size: 20,
          ),
        ),
        HamburderMenu(preferance: widget.preferance),
      ],
    );
  }
}
