import 'package:flutter/material.dart';
import 'package:project/modules/loading_onboarding/onboarding_components.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
    OnBoardingComponents onBoardingComponents =
        OnBoardingComponents(context: context);

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
            itemBuilder: (context, index) =>
                onBoardingComponents.showWhich(currentIndex),
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

}

//First specifications for Clipper of the first onboarding

//Second specifications for Clipper of the second onboarding

//Third specifications for Clipper of the third onboarding
