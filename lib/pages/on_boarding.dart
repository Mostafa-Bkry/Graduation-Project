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

  Widget firstOnBoarding() {
    return Column(children: [
      SizedBox(
        height: 445,
        child: ClipOval(
          clipper: MyClipperOne(),
          child: Image.asset('assets/images/secondScreen.png'),
        ),
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
        height: 20,
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
                color: Color(0xff3eb489),
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
            elevation: 5.0,
            fillColor: const Color(0xff3eb489),
            child: const Text(
              '>',
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'RobotoBold',
                letterSpacing: 1.5,
                color: Colors.white,
              ),
            ),
            padding: const EdgeInsets.all(9.0),
            constraints: const BoxConstraints(minWidth: 142),
            shape: const StadiumBorder(),
          ),
        ],
      ),
    ]);
  }

  Widget secondOnBoarding() {
    return Column(children: [
      const SizedBox(
        height: 40,
      ),
      ClipOval(
        clipper: MyClipperTow(),
        child: Image.asset('assets/images/thirdScreen.png'),
      ),
      const SizedBox(
        height: 50,
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
                color: Color(0xff3eb489),
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
            elevation: 5.0,
            fillColor: const Color(0xff3eb489),
            child: const Text(
              '>',
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'RobotoBold',
                letterSpacing: 1.5,
                color: Colors.white,
              ),
            ),
            padding: const EdgeInsets.all(9.0),
            constraints: const BoxConstraints(minWidth: 142),
            shape: const StadiumBorder(),
          ),
        ],
      ),
    ]);
  }

  Widget thirdOnBoarding() {
    return Column(children: [
      const SizedBox(
        height: 25,
      ),
      ClipOval(
        clipper: MyClipperThree(),
        child: Image.asset('assets/images/fourthScreen.png'),
      ),
      const SizedBox(
        height: 40,
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
        height: 50,
      ),
      Center(
        child: RawMaterialButton(
          onPressed: () => Navigator.of(context).pushReplacementNamed('/login'),
          elevation: 5.0,
          fillColor: const Color(0xff3eb489),
          child: const Text(
            'Get Started',
            style: TextStyle(
              fontSize: 23,
              fontFamily: 'RobotoBold',
              letterSpacing: 1.5,
              color: Colors.white,
            ),
          ),
          padding: const EdgeInsets.all(20.0),
          constraints: const BoxConstraints(minWidth: 244),
          shape: const StadiumBorder(),
        ),
      ),
    ]);
  }
}

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
