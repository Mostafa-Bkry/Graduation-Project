import 'package:flutter/material.dart';

import '../nav_and_drawer/bottom_nav_bar.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff3eb489),
        leading: IconButton(
          onPressed: () {
            BottomNavBar.index = 0;
            Navigator.of(context).pushReplacementNamed('/home');
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_sharp,
            size: 35,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar.convexBar(context),
    );
  }
}
