import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/app_colors.dart';
import 'package:hungry_app/shared/custom_text.dart';

import '../../../core/constants/appAssets.dart';

class Carditem extends StatelessWidget {
  Carditem({
    super.key,
    required this.name,
    required this.description,
    required this.photo,
    required this.rate,
  });

  String name;
  String description;
  String photo;
  String rate;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 1,
                child: Center(child: Image.asset(photo, width: 130))),
            Gap(15),
            CustomText(text: name, weight: FontWeight.bold, size: 13),
            CustomText(text: description, size: 12),
            Gap(5),
            Row(
              children: [
                Icon(Icons.star, color: Color(0xffFF9633)),
                Gap(10),
                CustomText(text: rate, weight: FontWeight.bold, size: 12),
                Spacer(),
                Icon(Icons.favorite,color: AppColors.primaryColor,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
