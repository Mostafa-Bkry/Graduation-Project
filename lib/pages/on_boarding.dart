import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentIndex = 0;
  final controller = PageController();

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
              activeDotColor: Color(0xff27554e),
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

  Widget firstOnBoarding() {
    return Column(children: [
      ClipOval(
        child: Image.asset('assets/images/secondScreen.png'),
      ),
      const SizedBox(
        height: 20,
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
        height: 35,
      ),
      const Text(
        'identify and better understand all',
        style: TextStyle(
          fontSize: 20,
          fontFamily: 'RobotoReqular',
        ),
      ),
      const Text(
        'kinds of plants living in nature',
        style: TextStyle(
          fontSize: 20,
          fontFamily: 'RobotoReqular',
        ),
      ),
      const SizedBox(
        height: 35,
      ),
      Row(
        children: [
          RawMaterialButton(
            onPressed: () => controller.jumpToPage(2),
            elevation: 2.0,
            child: const Text(
              'SKIP',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'RobotoBold',
                letterSpacing: 1.5,
                color: Colors.black,
              ),
            ),
            padding: const EdgeInsets.all(13.0),
            constraints: const BoxConstraints(minWidth: 142),
            shape: const StadiumBorder(),
          ),
          const SizedBox(
            width: 95,
          ),
          RawMaterialButton(
            onPressed: () => controller.nextPage(
              duration: const Duration(milliseconds: 650),
              curve: Curves.easeInOut,
            ),
            elevation: 2.0,
            fillColor: const Color(0xff27554e),
            child: const Text(
              'NEXT',
              style: TextStyle(
                fontSize: 23,
                fontFamily: 'RobotoBold',
                letterSpacing: 1.5,
                color: Colors.white,
              ),
            ),
            padding: const EdgeInsets.all(10.0),
            constraints: const BoxConstraints(minWidth: 142),
            shape: const StadiumBorder(),
          ),
        ],
      ),
    ]);
  }

  Widget secondOnBoarding() {
    return Column(children: [
      ClipOval(
        //clipper: MyClipper(),
        child: Image.asset('assets/images/thirdScreen.png'),
      ),
      const SizedBox(
        height: 20,
      ),
      const Text(
        'Advice',
        style: TextStyle(
          fontSize: 26,
          fontFamily: 'RobotoBold',
        ),
      ),
      const Text(
        'For The Best Treatment Methods',
        style: TextStyle(
          fontSize: 26,
          //fontWeight: FontWeight.bold,
          fontFamily: 'RobotoBold',
        ),
      ),
      const SizedBox(
        height: 37,
      ),
      const Text(
        'just take a photo of the planet',
        style: TextStyle(
          fontSize: 20,
          fontFamily: 'RobotoReqular',
        ),
      ),
      const Text(
        'you get the solution for it',
        style: TextStyle(
          fontSize: 20,
          fontFamily: 'RobotoReqular',
        ),
      ),
      const SizedBox(
        height: 31,
      ),
      Row(
        children: [
          RawMaterialButton(
            onPressed: () => controller.jumpToPage(2),
            elevation: 2.0,
            child: const Text(
              'SKIP',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'RobotoBold',
                letterSpacing: 1.5,
                color: Colors.black,
              ),
            ),
            padding: const EdgeInsets.all(13.0),
            constraints: const BoxConstraints(minWidth: 142),
            shape: const StadiumBorder(),
          ),
          const SizedBox(
            width: 95,
          ),
          RawMaterialButton(
            onPressed: () => controller.nextPage(
              duration: const Duration(milliseconds: 650),
              curve: Curves.easeInOut,
            ),
            elevation: 2.0,
            fillColor: const Color(0xff27554e),
            child: const Text(
              'NEXT',
              style: TextStyle(
                fontSize: 23,
                fontFamily: 'RobotoBold',
                letterSpacing: 1.5,
                color: Colors.white,
              ),
            ),
            padding: const EdgeInsets.all(10.0),
            constraints: const BoxConstraints(minWidth: 142),
            shape: const StadiumBorder(),
          ),
        ],
      ),
    ]);
  }

  Widget thirdOnBoarding() {
    return Column(children: [
      ClipOval(
        child: Image.asset('assets/images/fourthScreen.png'),
      ),
      const Text(
        'Recommendation',
        style: TextStyle(
          fontSize: 26,
          fontFamily: 'RobotoBold',
        ),
      ),
      const Text(
        'For The Best Treatment Products',
        style: TextStyle(
          fontSize: 26,
          //fontWeight: FontWeight.bold,
          fontFamily: 'RobotoBold',
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      const Text(
        'after your plant instantly recognized',
        style: TextStyle(
          fontSize: 20,
          fontFamily: 'RobotoReqular',
        ),
      ),
      const Text(
        'you get the product that you must',
        style: TextStyle(
          fontSize: 20,
          fontFamily: 'RobotoReqular',
        ),
      ),
      const Text(
        'use it for the treatment',
        style: TextStyle(
          fontSize: 20,
          fontFamily: 'RobotoReqular',
        ),
      ),
      const SizedBox(
        height: 28,
      ),
      Center(
        child: RawMaterialButton(
          onPressed: () => Navigator.of(context).pushReplacementNamed('/login'),
          elevation: 2.0,
          fillColor: const Color(0xff27554e),
          child: const Text(
            'Get Started',
            style: TextStyle(
              fontSize: 23,
              fontFamily: 'RobotoBold',
              letterSpacing: 1.5,
              color: Colors.white,
            ),
          ),
          padding: const EdgeInsets.all(10.0),
          constraints: const BoxConstraints(minWidth: 244),
          shape: const StadiumBorder(),
        ),
      ),
    ]);
  }
}


/*
class MyClipper extends CustomClipper<Rect> {
  @override
  getClip(Size size) {
    return const Rect.fromLTWH(0, 0, 400, 300);
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
*/