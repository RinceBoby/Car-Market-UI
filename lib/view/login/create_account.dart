import 'package:carmarket/core/constants/colors.dart';
import 'package:carmarket/view/home/bottom_nav.dart';
import 'package:carmarket/view/login/login_account.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/account_form.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: AccountForm(
              title: "Create your Account",
              btnTxt: "Sign Up",
              forgetTxt: "",
              acStatus: "Already have an account?",
              signInorUp: "Sign In",
              page: () {
                Get.offAll(BottomNavBar());
              },
              logPage: () => Get.to(const LoginAccount()),
              btnColor: fieldColor,
              btnTextColor: kWhite,
            ),
          ),
        ),
      ),
    );
  }
}
