import 'package:carmarket/core/constants/colors.dart';
import 'package:carmarket/core/constants/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Orders extends StatelessWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(
          CupertinoIcons.car_detailed,
          color: kText,
          size: 30,
        ),
        title: const Text(
          "My Orders",
          style: TextStyle(
            color: kText,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Icon(
            CupertinoIcons.ellipsis_circle,
            size: 30,
            color: kText,
          ),
          kWidth10,
        ],
      ),
      body: Column(),
    );
  }
}
