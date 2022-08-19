import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/dimensions.dart';
import 'line_text.dart';

// ignore: must_be_immutable
class AccountForm extends StatefulWidget {
  AccountForm({
    Key? key,
    required this.title,
    required this.btnTxt,
    required this.acStatus,
    required this.signInorUp,
    required this.btnColor,
    required this.btnTextColor,
    required this.logPage,
    this.forgetTxt,
  }) : super(key: key);

  final String title;
  final String btnTxt;
  final String acStatus;
  final String signInorUp;
  final Color btnColor;
  final Color btnTextColor;
  final String? forgetTxt;

  VoidCallback logPage;

  @override
  State<AccountForm> createState() => _AccountFormState();
}

class _AccountFormState extends State<AccountForm> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
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
        Text(
          widget.title,
          style: const TextStyle(
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
                  style: const TextStyle(color: kWhite),
                  textInputAction: TextInputAction.next,
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(color: kWhite.withOpacity(.5)),
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
                  style: const TextStyle(color: kWhite),
                  obscureText: true,
                  controller: passController,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(color: kWhite.withOpacity(.5)),
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
                    suffixIcon:
                        Icon(CupertinoIcons.eye, color: kWhite.withOpacity(.5)),
                  ),
                ),
              ],
            ),
          ),
        ),
        kHeight30,
        Container(),

        //<<<<<Button>>>>>//
        ElevatedButton(
          onPressed: signIn,
          style: ElevatedButton.styleFrom(
            primary: widget.btnColor,
            shape: RoundedRectangleBorder(borderRadius: kRadius30),
            fixedSize: Size(size.width * .9, 50),
          ),
          child: Text(
            widget.btnTxt,
            style: TextStyle(
              fontSize: 20,
              color: widget.btnTextColor,
            ),
          ),
        ),
        kHeight40,

        //<<<<<Forget>>>>>//
        Text(
          widget.forgetTxt!,
          style: const TextStyle(
            color: kWhite,
            fontSize: 16,
          ),
        ),
        kHeight30,

        const TextInLine(text: "or continue with"),
        kHeight50,

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
        kHeight40,

        //<<<<<Already>>>>>//
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: prefer_const_constructors
            Text(
              widget.acStatus,
              style: const TextStyle(
                color: kGrey,
                fontWeight: FontWeight.w100,
                fontSize: 18,
              ),
            ),
            kWidth10,

            GestureDetector(
              onTap: widget.logPage,
              child: Text(
                widget.signInorUp,
                style: const TextStyle(
                  color: kWhite,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  //
  //
  //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Method>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>//
  //
  //
  //<<<<<User_Auth_Firebase>>>>>//
  Future signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }
}
