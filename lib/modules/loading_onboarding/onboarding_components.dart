import 'package:flutter/material.dart';
import 'package:project/modules/loading_onboarding/on_boarding.dart';

import '../../shared/components/components.dart';
import '../../shared/components/constants.dart';

class OnBoardingComponents {
  //final CustomClipper<Rect> clipper;
  final BuildContext context;

  OnBoardingComponents({
    required this.context,
  });

  Widget showWhich(int number) {
    if (number == 0) {
      return firstOnBoarding();
    } else if (number == 1) {
      return secondOnBoarding();
    } else {
      return thirdOnBoarding();
    }
  }

//First onboarding
  Widget firstOnBoarding() {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
        child: Center(
          child: ClipOval(
            clipper: MyClipper(
              rect: const Rect.fromLTRB(-50, 0, 500, 480),
              reclip: true,
            ),
            child: Image.asset('assets/images/secondScreen.png'),
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      const Text(
        'Immediate',
        style: TextStyle(
          fontSize: 26,
          fontFamily: 'RobotoBold',
        ),
      ),
      const Text(
        'Detection Of Disease',
        style: TextStyle(
          fontSize: 26,
          //fontWeight: FontWeight.bold,
          fontFamily: 'RobotoBold',
        ),
      ),
      const SizedBox(
        height: 25,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          commonUsedButton(
            function: () => controller.jumpToPage(2),
            elevation: 0.0,
            text: 'SKIP',
            fontSize: 18,
            textColor: const Color(0xff3eb489),
            padding: const EdgeInsets.all(13.0),
            fillColor: Colors.transparent,
          ),
          const SizedBox(
            width: 90,
          ),
          commonUsedButton(
            function: () => controller.nextPage(
              duration: const Duration(milliseconds: 650),
              curve: Curves.easeInOut,
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 25,
      ),
    ]);
  }

//Second onboarding
  Widget secondOnBoarding() {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
        child: ClipOval(
          clipper: MyClipper(
            rect: const Rect.fromLTRB(0, 0, 600, 500),
            reclip: true,
          ),
          child: Image.asset('assets/images/thirdScreen.png'),
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      const Text(
        'Advice for the best treatment',
        style: TextStyle(
          fontSize: 26,
          fontFamily: 'RobotoBold',
        ),
      ),
      const SizedBox(
        height: 31,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          commonUsedButton(
            function: () => controller.jumpToPage(2),
            elevation: 0.0,
            text: 'SKIP',
            fontSize: 18,
            textColor: const Color(0xff3eb489),
            padding: const EdgeInsets.all(13.0),
            fillColor: Colors.transparent,
          ),
          const SizedBox(
            width: 90,
          ),
          commonUsedButton(
            function: () => controller.nextPage(
              duration: const Duration(milliseconds: 650),
              curve: Curves.easeInOut,
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 25,
      ),
    ]);
  }

//Third onboarding
  Widget thirdOnBoarding() {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
        child: ClipOval(
          clipper: MyClipper(
            rect: const Rect.fromLTRB(-30, -180, 490, 490),
            reclip: true,
          ),
          child: Image.asset('assets/images/fourthScreen.png'),
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      const Text(
        'Recommendation',
        style: TextStyle(
          fontSize: 26,
          fontFamily: 'RobotoBold',
        ),
      ),
      const Text(
        'For the best treatment products',
        style: TextStyle(
          fontSize: 26,
          //fontWeight: FontWeight.bold,
          fontFamily: 'RobotoBold',
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      commonUsedButton(
        function: () => Navigator.of(context).pushReplacementNamed('/login'),
        text: 'Get Started',
        fontSize: 23,
        padding: const EdgeInsets.all(20.0),
        constraints: const BoxConstraints(minWidth: 244),
      ),
      const SizedBox(
        height: 30,
      ),
    ]);
  }
}
