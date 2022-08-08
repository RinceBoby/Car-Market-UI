import 'package:carmarket/core/constants/colors.dart';
import 'package:carmarket/core/constants/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kBlack,
        leading: const Icon(
          CupertinoIcons.profile_circled,
          color: kText,
          size: 30,
        ),
        title: const Text(
          "Profile",
          style: TextStyle(
            color: kText,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Icon(
            CupertinoIcons.ellipsis_circle,
            color: kText,
            size: 30,
          ),
          kWidth10,
        ],
      ),

      //<<<<<Profile>>>>>//
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            kHeight20,
            Center(
              child: Column(
                children: const [
                  //<<<<<Profile_Image>>>>>//
                  CircleAvatar(
                    radius: 100,
                    backgroundColor: kWhite,
                    child: CircleAvatar(
                      radius: 90,
                      backgroundColor: Colors.black,
                    ),
                  ),
                  kHeight15,

                  //<<<<<Username>>>>>//
                  Text(
                    "User Name",
                    style: TextStyle(
                      color: kText,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  kHeight10,
                  Divider(color: kText, thickness: 3),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
