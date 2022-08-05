import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../core/constants/colors.dart';
import '../../core/constants/dimensions.dart';

class CarCard extends StatefulWidget {
  const CarCard({
    Key? key,
  }) : super(key: key);

  @override
  State<CarCard> createState() => _CarCardState();
}

class _CarCardState extends State<CarCard> {
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: 150,
              width: 170,
              decoration: BoxDecoration(
                color: fieldColor,
                borderRadius: BorderRadius.circular(25),
                image: const DecorationImage(
                  image: AssetImage("assets/lamborghini_PNG102917.png"),
                ),
              ),

              //<<<<<Fav_Icon>>>>>//
              child: Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    right: 10,
                  ),
                  child: Image.asset(
                    "assets/fav-icon.png",
                    height: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
        kHeight10,

        //<<<<<Car_Short_Details>>>>>//
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //<<<<<Car_Name>>>>>//
              const Text(
                "Lamborgini",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: kText,
                  letterSpacing: 1,
                ),
              ),
              kHeight10,

              //<<<<<Rating>>>>>//
              Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 15,
                      itemPadding: const EdgeInsets.only(right: 4),
                      itemBuilder: (context, index) => const Icon(
                        CupertinoIcons.star_fill,
                        color: kStar,
                      ),
                      onRatingUpdate: (rating) => setState(() {
                        this.rating = rating;
                      }),
                    ),
                  ),
                  Text(
                    "$rating",
                    style: const TextStyle(
                      color: kText,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              kHeight10,

              //<<<<<Price>>>>>//
              const Text(
                "₹ 12.2 L",
                style: TextStyle(
                  color: kText,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
