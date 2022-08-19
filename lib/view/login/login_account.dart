import 'package:carmarket/core/constants/colors.dart';
import 'package:carmarket/view/home/bottom_nav.dart';
import 'package:carmarket/view/login/create_account.dart';
import 'package:carmarket/view/login/widgets/account_form.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginAccount extends StatelessWidget {
  const LoginAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        //<<<<<User_Auth_Firebase>>>>>//
        body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return const Center(
                child: Text(
                  "Something Went wrong!",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: kWhite,
                  ),
                ),
              );
            } else if (snapshot.hasData) {
              return BottomNavBar();
            } else {
              return Center(
                child: SingleChildScrollView(
                  child: AccountForm(
                    title: "Login to Your Account",
                    btnTxt: "Sign In",
                    forgetTxt: "Forget the Password?",
                    acStatus: "Don't have an account?",
                    signInorUp: "Sign Up",
                    logPage: () => Get.offAll(CreateAccount()),
                    btnColor: kWhite,
                    btnTextColor: kBlack,
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
