import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../shared/components/components.dart';
import '../../shared/components/constants.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: PageView.builder(
            controller: controller,
            scrollDirection: Axis.horizontal,
            onPageChanged: (value) {
              setState(() {
                currentIndex = value;
                //print('currentIndex = $currentIndex');
              });
            },
            itemCount: 3,
            itemBuilder: (context, index) => showWhich(currentIndex),
          ),
        ),
        Center(
          child: SmoothPageIndicator(
            controller: controller,
            count: 3,
            effect: const WormEffect(
              activeDotColor: Color(0xff3eb489),
              dotColor: Color(0xffd1f0e0),
            ),
            onDotClicked: (index) => controller.animateToPage(
              index,
              duration: const Duration(
                milliseconds: 650,
              ),
              curve: Curves.easeIn,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ]),
    );
  }

  //-------------------------------
  //methods manage what to show in each on board screen

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
            clipper: MyClipperOne(),
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
          clipper: MyClipperTow(),
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
          clipper: MyClipperThree(),
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

//First specifications for Clipper of the first onboarding
class MyClipperOne extends CustomClipper<Rect> {
  @override
  getClip(Size size) {
    return const Rect.fromLTRB(-50, 0, 500, 480);
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}

//Second specifications for Clipper of the second onboarding
class MyClipperTow extends CustomClipper<Rect> {
  @override
  getClip(Size size) {
    return const Rect.fromLTRB(0, 0, 600, 500);
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}

//Third specifications for Clipper of the third onboarding
class MyClipperThree extends CustomClipper<Rect> {
  @override
  getClip(Size size) {
    return const Rect.fromLTRB(-30, -180, 490, 490);
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
