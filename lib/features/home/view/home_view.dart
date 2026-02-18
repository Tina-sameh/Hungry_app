import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/appAssets.dart';
import 'package:hungry_app/features/home/widgets/cardItem.dart';
import 'package:hungry_app/features/home/widgets/food_category.dart';
import 'package:hungry_app/features/home/widgets/search_field.dart';
import 'package:hungry_app/features/home/widgets/user_header.dart';
import 'package:hungry_app/shared/custom_text.dart';

import '../../../core/constants/app_colors.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List Category = ["All", "Combos", "Slider", "Classic"];
  List photos = [
    AppAssets.photo1,
    AppAssets.photo2,
    AppAssets.photo3,
    AppAssets.photo4,
  ];
  Map<String, String> food = {
    "Cheeseburger": "Wendy's Burger",
    "Hamburger": "Veggie Burger",
    "Hamburger2": "Chicken Burger",
    "Hamburger3": "Fried Chicken Burger",
  };
  int currentCat = 0;

  @override
  Widget build(BuildContext context) {
    List<String> foodNames = food.keys.toList();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Column(
            children: [
              Gap(50),
              UserHeader(),
              Gap(20),
              SearchField(),
              Gap(20),
              FoodCategory(currentCat: currentCat, Category: Category),
              Gap(10),
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: photos.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: .69,
                    crossAxisSpacing: 5
                  ),
                  itemBuilder: (context, index) {
                    return Carditem(description:food[foodNames[index]]!, name: foodNames[index]!, photo:photos[index], rate: '4.8',);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
