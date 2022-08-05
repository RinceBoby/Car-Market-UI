import 'package:carmarket/core/constants/colors.dart';
import 'package:carmarket/view/home/bottom_nav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingPagee extends StatelessWidget {
  const OnboardingPagee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: IntroductionScreen(
            pages: [
              PageViewModel(
                title: 'This is the title',
                body: 'This is the body',
                image: onBoardingImage("assets/camaro_PNG34.png"),
                decoration: onBoardingText(),
              ),
              PageViewModel(
                title: 'This is the title',
                body: 'This is the body',
                image: onBoardingImage("assets/lamborghini_PNG102917.png"),
                decoration: onBoardingText(),
              ),
              PageViewModel(
                title: 'This is the title',
                body: 'This is the body',
                image: onBoardingImage("assets/Mclaren_PNG80.png"),
                decoration: onBoardingText(),
              ),
              PageViewModel(
                title: 'This is the title',
                body: 'This is the body',
                image: onBoardingImage("assets/lamborghini_PNG102917.png"),
                decoration: onBoardingText(),
              ),
            ],
            done: const Text("Start",style: TextStyle(color: kWhite)),
            onDone: () => Get.off(BottomNavBar()),
            showSkipButton: true,
            skip: const Text("Skip", style: TextStyle(color: kWhite)),
            onSkip: () => Get.off(BottomNavBar()),
            next: const Icon(CupertinoIcons.forward, color: kWhite),
            dotsDecorator: boardingPageDots(),
            skipOrBackFlex: 0,
            nextFlex: 0,
          ),
        ),
      );

  DotsDecorator boardingPageDots() => DotsDecorator(
        activeColor: Colors.amber,
        color: kWhite,
        size: const Size(10, 10),
        activeSize: const Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration onBoardingText() => const PageDecoration(
        titleTextStyle:
            TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: kWhite),
        bodyTextStyle: TextStyle(fontSize: 20, color: kWhite),
        imagePadding: EdgeInsets.all(24),
      );

  onBoardingImage(String path) => Center(
        child: Image.asset(path, width: 350),
      );
}
