import 'package:carmarket/view/home/bottom_nav.dart';
import 'package:carmarket/view/login/lets_you_in.dart';
import 'package:carmarket/view/onboarding/onboardingPage.dart';
import 'package:carmarket/view/onboarding/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor:Colors.black,
      ),
      home:
      //const OnboardingPagee()
      const OnBoardingPage(),
      //LetsInPage(),
      //BottomNavBar(),
    );
  }
}