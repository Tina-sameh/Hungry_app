import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../shared/custom_text.dart';

class CustomAuthBtn extends StatelessWidget {
   Function() onTap;
  String btnName;
  CustomAuthBtn({super.key,required this.onTap,required this.btnName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        padding: EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: CustomText(
            text: btnName,
            color: AppColors.primaryColor,
            weight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
