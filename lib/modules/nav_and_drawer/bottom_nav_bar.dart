import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class BottomNavBar {
  static int index = 0;
  int? location;

  static Widget convexBar(BuildContext context, {int? location}) {
    return ConvexAppBar(
      initialActiveIndex: location ?? index,
      color: const Color(0xff3f414e),
      activeColor: Colors.green,
      backgroundColor: Colors.white,
      items: const [
        TabItem(icon: Icons.home, title: 'Home'),
        TabItem(icon: Icons.analytics_sharp, title: 'Analysis'),
        TabItem(icon: Icons.history, title: 'History'),
        TabItem(icon: Icons.emoji_emotions_rounded, title: 'Profile'),
      ],
      onTap: (int i) => clickedIcon(i, context),
    );
  }

  //Manage Icons of bottom navigation bar
  static void clickedIcon(int i, BuildContext context) {
    if (i == 0) {
      index = 0;
      Navigator.of(context).pushReplacementNamed('/home');
    } else if (i == 1) {
      index = 1;
      Navigator.of(context).pushReplacementNamed('/analysis_result');
    } else if (i == 2) {
      index = 2;
      Navigator.of(context).pushReplacementNamed('/history');
    } else {
      index = 3;
      Navigator.of(context).pushReplacementNamed('/edit_profile');
    }
  }
}
