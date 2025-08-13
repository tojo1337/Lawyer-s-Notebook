import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lawyers_notebook/models/theme_preferance.dart';
import 'package:lawyers_notebook/themes/theme_design.dart';

class DefaultHeader extends StatefulWidget implements PreferredSizeWidget {
  final String writtenText;
  final ThemePreferance preferance;

  const DefaultHeader({
    super.key,
    required this.writtenText,
    required this.preferance,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  State<DefaultHeader> createState() => _DefaultHeader();
}

class _DefaultHeader extends State<DefaultHeader> {
  onBackPressed(BuildContext context) {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.purple,
      title: Text(
        widget.writtenText,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      leading: IconButton(
        onPressed: () => onBackPressed(context),
        icon: FaIcon(
          FontAwesomeIcons.arrowLeft,
          size: 20,
          color: ThemeDesign().actionButtonColor(widget.preferance),
        ),
      ),
    );
  }
}
