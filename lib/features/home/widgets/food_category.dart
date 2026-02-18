import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../shared/custom_text.dart';

class FoodCategory extends StatefulWidget {
   FoodCategory({super.key,required this.currentCat,required this.Category});
  int currentCat = 0;
  List Category;
  @override
  State<FoodCategory> createState() => _FoodCategoryState();
}

class _FoodCategoryState extends State<FoodCategory> {
  int currentCat = 0;

  @override
  void initState() {
    currentCat= widget.currentCat;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return               SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(widget.Category.length, (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                currentCat = index;
              });
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                color: currentCat == index
                    ? AppColors.primaryColor
                    : Colors.grey.shade200,
                borderRadius: BorderRadius.circular(15),
              ),
              child: CustomText(
                text: widget.Category[index],
                weight: FontWeight.w500,
                color: currentCat == index
                    ? Colors.white
                    : Colors.grey[600],
              ),
            ),
          );
        }),
      ),
    )
    ;
  }
}
