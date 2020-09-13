import 'package:flutter/material.dart';

class ColoredTabBar extends Container implements PreferredSizeWidget {
  ColoredTabBar(this.color, this.tabBar);

  final Color color;
  final TabBar tabBar;

  @override
  Size get preferredSize => tabBar.preferredSize;

  @override
  Widget build(BuildContext context) => PreferredSize(
    preferredSize: Size.fromHeight(80.0),
    child: Container(
      height:40,
      child: tabBar,
    ),
  );
}