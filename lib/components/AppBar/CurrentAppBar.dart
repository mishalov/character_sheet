import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor = Colors.red;
  final Text title;
  final List<Widget> widgets;

  /// you can add more fields that meet your needs

  const BaseAppBar({Key key, this.title, this.widgets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Ваши персонажи"),
      backgroundColor: backgroundColor,
      actions: widgets,
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(AppBar().preferredSize.height);
}
