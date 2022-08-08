import 'package:carmarket/core/constants/colors.dart';
import 'package:carmarket/core/constants/dimensions.dart';
import 'package:carmarket/view/home/bottom_nav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class OfferProcessed extends StatelessWidget {
  const OfferProcessed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBlack,
        leading: GestureDetector(
          onTap: () => Get.back(),
          child: const Icon(
            CupertinoIcons.arrow_left,
            color: kText,
          ),
        ),
        title: const Text(
          "Make an Offer",
          style: TextStyle(
            color: kText,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      //<<<<<Processed>>>>>//
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(
                height: 300,
                width: size.width,
                child: Lottie.asset("assets/processing2.json"),
              ),
              kHeight30,
              const Text(
                "Your offer is being\nprocessed..",
                style: TextStyle(
                  fontSize: 30,
                  color: kWhite,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              kHeight20,
              const SizedBox(
                child: Text(
                  "Please check the messages to see if your offer is being accepted or not!",
                  style: TextStyle(
                    color: kText,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              kHeight150,
              ElevatedButton(
                onPressed: () => Get.to(BottomNavBar()),
                style: ElevatedButton.styleFrom(
                  primary: kWhite,
                  shape: RoundedRectangleBorder(borderRadius: kRadius30),
                  fixedSize: Size(size.width * .8, 50),
                ),
                child: const Text(
                  "Back to Home..",
                  style: TextStyle(
                    color: kBlack,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              kHeight30,
            ],
          ),
        ),
      ),
    );
  }
}
