import 'package:flutter/material.dart';
import 'package:project/nav_and_drawer/bottom_nav_bar.dart';

class AnalysisResult extends StatefulWidget {
  const AnalysisResult({Key? key}) : super(key: key);

  @override
  State<AnalysisResult> createState() => _AnalysisResultState();
}

class _AnalysisResultState extends State<AnalysisResult> {
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
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Result',
              style: TextStyle(
                fontSize: 28,
                fontFamily: 'PoppinsBold',
                color: Color(0xff3f414e),
              ),
            ),
            SizedBox(
              height: 150,
              child: Image.asset('assets/images/result.png'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 55, child: Image.asset('assets/images/true.webp')),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar.convexBar(context),
    );
  }
}
