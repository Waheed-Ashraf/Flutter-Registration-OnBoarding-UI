import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:worktest1/Core/widgets/custom_button.dart';
import 'package:worktest1/Views/OnBoarding/widgets/men_avatar.dart';
import 'package:worktest1/Views/OnBoarding/widgets/onboarding_page_three.dart';
import 'package:worktest1/Views/OnBoarding/widgets/onboarding_page_tow.dart';
import 'package:worktest1/Views/OnBoarding/widgets/onboarding_pageone.dart';
import 'package:worktest1/Views/OnBoarding/widgets/women_avatar.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  PageController controller = PageController();
  bool isLastPage = false;
  bool isFirestPage = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
            controller: controller,
            onPageChanged: (value) {
              setState(() {
                isLastPage = (value == 2);
                isFirestPage = (value == 0);
              });
            },
            children: const [
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
        ),
        Container(
          alignment: const Alignment(0, .92),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                !isLastPage
                    ? CustomButton(
                        text: "التالي",
                        onPressed: () {
                          controller.nextPage(
                              duration: const Duration(microseconds: 800),
                              curve: Curves.easeIn);
                        },
                      )
                    : CustomButton(
                        text: "إنشاء حساب",
                        onPressed: () {
                          isMale
                              ? Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const MenAvatars()),
                                )
                              : Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const WomenAvatar()),
                                );
                        }),
                const SizedBox(
                  height: 8,
                ),
                isFirestPage
                    ? const SizedBox()
                    : CustomButton(
                        text: 'الرجوع',
                        onPressed: () {
                          controller.previousPage(
                              duration: const Duration(microseconds: 800),
                              curve: Curves.easeIn);
                        },
                        withBorder: true,
                        color: Colors.white,
                      )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
