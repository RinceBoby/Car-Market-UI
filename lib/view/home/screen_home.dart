import 'package:carmarket/core/constants/colors.dart';
import 'package:carmarket/core/constants/dimensions.dart';
import 'package:carmarket/view/details/car_details.dart';
import 'package:carmarket/view/top%20deals/top_deals.dart';
import 'package:carmarket/view/wishlist/wishlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/car_card.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  List<String> brands = [
    "All",
    "Mercedes",
    "Volvo",
    "BMW",
    "Tesla",
    "Land Rover",
    "Toyota",
    "Rolls Royce",
    "Audi",
    "Lexus",
  ];

  int tappedIndex = 0;
  double rating = 0;
  Color value = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              sliver: SliverAppBar(
                backgroundColor: Colors.transparent,
                floating: false,
                pinned: false,
                snap: false,
                expandedHeight: 50,
                leading: const CircleAvatar(
                  backgroundColor: kText,
                  radius: 30,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://i.pinimg.com/736x/f1/bf/bc/f1bfbce79fc3ce0fae1295e9af9109dd.jpg"),
                    radius: 25,
                  ),
                ),
                title: const Text(
                  "User Name",
                  style: TextStyle(
                    color: kText,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                actions: [
                  GestureDetector(
                    onTap: () => Get.to(Wishlist()),
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.transparent,
                      child: Image.asset(
                        "assets/fav-icon.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
                // flexibleSpace: FlexibleSpaceBar(
                //   title: TextFormField(
                //     decoration: InputDecoration(
                //       border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(10),
                //         borderSide: BorderSide.none,
                //       ),
                //       filled: true,
                //       fillColor: fieldColor,
                //       prefixIcon: Icon(
                //         CupertinoIcons.search,
                //         color: kText.withOpacity(.6),
                //       ),
                //       hintText: "Search",
                //       hintStyle: TextStyle(
                //         color: kText.withOpacity(.6),
                //         fontWeight: FontWeight.w300,
                //         fontSize: 18,
                //       ),
                //       suffixIcon: const Icon(
                //         CupertinoIcons.slider_horizontal_3,
                //         color: kWhite,
                //       ),
                //     ),
                //     readOnly: true,
                //   ),
                //   centerTitle: true,
                // ),
              ),
            ),
            SliverToBoxAdapter(
              child: ListView(
                shrinkWrap: true,
                primary: false,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 5),

                        //   //<<<<<Image_And_Fav>>>>>//
                        //   child: Row(
                        //     children: [
                        //       const CircleAvatar(
                        //         backgroundColor: kText,
                        //         radius: 30,
                        //         child: CircleAvatar(
                        //           backgroundImage: NetworkImage(
                        //               "https://i.pinimg.com/736x/f1/bf/bc/f1bfbce79fc3ce0fae1295e9af9109dd.jpg"),
                        //           radius: 25,
                        //         ),
                        //       ),
                        //       kWidth20,

                        //       //<<<<<User_Name>>>>>//
                        //       const Text(
                        //         "User Name",
                        //         style: TextStyle(
                        //           color: kText,
                        //           fontSize: 23,
                        //           fontWeight: FontWeight.bold,
                        //         ),
                        //       ),
                        //       const Spacer(),
                        //       GestureDetector(
                        //         onTap: () {},
                        //         child: SizedBox(
                        //           height: 30,
                        //           width: 30,
                        //           child: Image.asset(
                        //             "assets/fav-icon.png",
                        //             fit: BoxFit.cover,
                        //           ),
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        kHeight10,

                        //<<<<<Search>>>>>//
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: fieldColor,
                            prefixIcon: Icon(
                              CupertinoIcons.search,
                              color: kText.withOpacity(.6),
                            ),
                            hintText: "Search",
                            hintStyle: TextStyle(
                              color: kText.withOpacity(.6),
                              fontWeight: FontWeight.w300,
                              fontSize: 18,
                            ),
                            suffixIcon: const Icon(
                              CupertinoIcons.slider_horizontal_3,
                              color: kWhite,
                            ),
                          ),
                          readOnly: true,
                        ),
                        kHeight20,

                        //<<<<<Brands>>>>>//
                        Wrap(
                          alignment: WrapAlignment.end,
                          spacing: 15,
                          runSpacing: 20,
                          children: [
                            BrandCircle(
                                logo: "assets/1Benz.png", brand: "benz"),
                            BrandCircle(
                                logo: "assets/8Volvo.png", brand: "volvo"),
                            BrandCircle(logo: "assets/3-BMW.png", brand: "bmw"),
                            BrandCircle(
                                logo: "assets/4-Tesla.png", brand: "tesla"),
                            BrandCircle(
                                logo: "assets/5Land-Rover.png",
                                brand: "land.."),
                            BrandCircle(
                                logo: "assets/6Toyota.png", brand: "toyota"),
                            BrandCircle(
                                logo: "assets/2-Rolls-Royce.png",
                                brand: "rolls.."),
                            BrandCircle(logo: "assets/Audi.png", brand: "audi"),
                            BrandCircle(
                                logo: "assets/Lexuz.png", brand: "lexus"),
                            BrandCircle(
                                logo: "assets/8-More.png", brand: "more"),
                          ],
                        ),
                        kHeight20,

                        //<<<<<Top_Deals>>>>>//
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              "Top Deals",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: kText,
                              ),
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () => Get.to(TopDeals()),
                              child: const Text(
                                "See All",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: kText,
                                ),
                              ),
                            ),
                          ],
                        ),
                        kHeight20,

                        //<<<<<Brand_List>>>>>//
                        SizedBox(
                          height: 40,
                          child: ListView.separated(
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: brands.length,
                            separatorBuilder: (context, index) => kWidth10,
                            itemBuilder: (context, index) {
                              return RoundTabItem(
                                  text: brands[index], index: index);
                            },
                          ),
                        ),
                        kHeight20,

                        // <<<<<Car_Card>>>>>//
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: GridView.builder(
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            itemCount: 12,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 1.1 / 1.5,
                              crossAxisSpacing: 10,
                              crossAxisCount:
                                  (orientation == Orientation.portrait) ? 2 : 4,
                            ),
                            itemBuilder: (context, index) => CarCard(
                              ontap: () => Get.to(DetailsPage()),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>//
  //
  //
  //<<<<<Brand_Circle>>>>>//
  BrandCircle({
    required String logo,
    required String brand,
  }) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: CircleAvatar(
            radius: 30,
            backgroundColor: fieldColor,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(logo),
            ),
          ),
        ),
        kHeight10,
        Text(
          brand.toUpperCase(),
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: kText,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  //<<<<<Round_Tab_item>>>>>//
  RoundTabItem({required String text, required int index}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          tappedIndex = index;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          border: tappedIndex == index
              ? Border.all(color: Colors.transparent)
              : Border.all(color: kGrey),
          borderRadius: kRadius30,
          color: tappedIndex == index ? fieldColor : Colors.transparent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: kText,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
