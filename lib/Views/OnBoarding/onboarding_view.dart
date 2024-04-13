import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:worktest1/Views/OnBoarding/widgets/onboarding_page_three.dart';
import 'package:worktest1/Views/OnBoarding/widgets/onboarding_page_tow.dart';
import 'package:worktest1/Views/OnBoarding/widgets/onboarding_pageone.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(controller: controller, children: const [
          OnBoardingPageOne(),
          OnBoardingPageTwo(),
          OnBoardingPageThree(),
        ]),
        Container(
          alignment: const Alignment(0, -.85),
          child: Positioned(
            child: SmoothPageIndicator(
              controller: controller, // PageController
              count: 4,
              effect: const ExpandingDotsEffect(), // your preferred effect
            ),
          ),
        )
      ]),
    );
  }
}
