import 'package:carmarket/core/constants/colors.dart';
import 'package:carmarket/view/home/bottom_nav.dart';
import 'package:carmarket/view/login/login_account.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constants/dimensions.dart';
import 'widgets/account_form.dart';
import 'widgets/line_text.dart';

class CreateAccount extends StatelessWidget {
  CreateAccount({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child:
                // AccountForm(
                //   title: "Create your Account",
                //   btnTxt: "Sign Up",
                //   forgetTxt: "",
                //   acStatus: "Already have an account?",
                //   signInorUp: "Sign In",
                //   page: () {
                //     Get.offAll(BottomNavBar());
                //   },
                //   logPage: () => Get.to(const LoginAccount()),
                //   btnColor: fieldColor,
                //   btnTextColor: kWhite,
                // ),
                Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //<<<<<Image>>>>>//
                SizedBox(
                  width: size.width * 08,
                  child: const Icon(
                    CupertinoIcons.car_detailed,
                    size: 150,
                    color: kWhite,
                  ),
                ),
                kHeight40,

                //<<<<<Title>>>>>//
                const Text(
                  "Create your Account",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                    color: kWhite,
                  ),
                ),
                kHeight30,

                //<<<<<Text_Form_Field>>>>>//
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            Pattern pattern =
                                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                            RegExp regex = RegExp(pattern.toString());
                            if (value!.isEmpty) {
                              return "Required Field";
                            } else if (!regex.hasMatch(value)) {
                              return "Enter a valid email";
                            } else {
                              return null;
                            }
                          },
                          controller: emailController,
                          decoration: InputDecoration(
                            labelText: "Email",
                            labelStyle:
                                TextStyle(color: kWhite.withOpacity(.5)),
                            border: const OutlineInputBorder(),
                            prefixIcon: Icon(CupertinoIcons.mail,
                                color: kWhite.withOpacity(.5)),
                            filled: true,
                            fillColor: fieldColor,
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: kWhite),
                            ),
                            errorBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: kRed),
                            ),
                          ),
                        ),
                        kHeight15,
                        TextFormField(
                          validator: (value) {
                            Pattern pattern =
                                r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$';
                            RegExp regex = RegExp(pattern.toString());
                            if (value!.isEmpty) {
                              return "Required Field";
                            } else if (!regex.hasMatch(value)) {
                              return "Enter a valid password";
                            } else {
                              return null;
                            }
                          },
                          controller: passController,
                          decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle:
                                TextStyle(color: kWhite.withOpacity(.5)),
                            border: const OutlineInputBorder(),
                            prefixIcon: Icon(CupertinoIcons.lock,
                                color: kWhite.withOpacity(.5)),
                            filled: true,
                            fillColor: fieldColor,
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: kWhite),
                            ),
                            errorBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: kRed),
                            ),
                            suffixIcon: Icon(CupertinoIcons.eye,
                                color: kWhite.withOpacity(.5)),
                          ),
                        ),
                        kHeight15,

                        TextFormField(
                          validator: (value) {
                            Pattern pattern =
                                r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$';
                            RegExp regex = RegExp(pattern.toString());
                            if (value!.isEmpty) {
                              return "Required Field";
                            } else if (!regex.hasMatch(value)) {
                              return "Enter a valid password";
                            } else {
                              return null;
                            }
                          },
                          controller: passController,
                          decoration: InputDecoration(
                            labelText: "Confirm Password",
                            labelStyle:
                                TextStyle(color: kWhite.withOpacity(.5)),
                            border: const OutlineInputBorder(),
                            prefixIcon: Icon(CupertinoIcons.lock,
                                color: kWhite.withOpacity(.5)),
                            filled: true,
                            fillColor: fieldColor,
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: kWhite),
                            ),
                            errorBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: kRed),
                            ),
                            suffixIcon: Icon(CupertinoIcons.eye,
                                color: kWhite.withOpacity(.5)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                kHeight30,
                

                //<<<<<Button>>>>>//
                ElevatedButton(
                  onPressed: () => Get.offAll(BottomNavBar()),
                  style: ElevatedButton.styleFrom(
                    primary: fieldColor,
                    shape: RoundedRectangleBorder(borderRadius: kRadius30),
                    fixedSize: Size(size.width * .9, 50),
                  ),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 20,
                      color: kWhite,
                    ),
                  ),
                ),
                kHeight15,

                //<<<<<Forget>>>>>//
                const Text(
                  "",
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 16,
                  ),
                ),
                kHeight15,

                const TextInLine(text: "or continue with"),
                kHeight30,

                //<<<<<Google>>>>>//
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 60,
                    width: 85,
                    decoration: BoxDecoration(
                      color: kGrey.withOpacity(.2),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: kGrey.withOpacity(.3)),
                    ),
                    child: Center(
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/google_icon.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                kHeight30,

                //<<<<<Already>>>>>//
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ignore: prefer_const_constructors
                    Text(
                      "Already have an account?",
                      style: const TextStyle(
                        color: kGrey,
                        fontWeight: FontWeight.w100,
                        fontSize: 18,
                      ),
                    ),
                    kWidth10,

                    GestureDetector(
                      onTap: () => Get.to(const LoginAccount()),
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                          color: kWhite,
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
