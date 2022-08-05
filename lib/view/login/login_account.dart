import 'package:carmarket/core/constants/colors.dart';
import 'package:carmarket/view/home/bottom_nav.dart';
import 'package:carmarket/view/login/create_account.dart';
import 'package:carmarket/view/login/widgets/account_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginAccount extends StatelessWidget {
  const LoginAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: SingleChildScrollView(
          child: AccountForm(
            title: "Login to Your Account",
            btnTxt: "Sign In",
            forgetTxt: "Forget the Password?",
            acStatus: "Don't have an account?",
            signInorUp: "Sign Up",
            logPage: () => Get.offAll(const CreateAccount()),
            page: () {
              Get.off(BottomNavBar());
            },
            btnColor: kWhite,
            btnTextColor: kBlack,
          ),
        ),
      )),
    );
  }
}
