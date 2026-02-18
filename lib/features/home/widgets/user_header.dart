import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../core/constants/appAssets.dart';
import '../../../core/constants/app_colors.dart';
import '../../../shared/custom_text.dart';

class UserHeader extends StatelessWidget{
  const UserHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            SvgPicture.asset(
              AppAssets.logo,
              color: AppColors.primaryColor,
              width: MediaQuery.of(context).size.width * .5,
              height: MediaQuery.of(context).size.height * .05,
            ),
            Gap(5),
            CustomText(
              text: "Hello , Tinaaaa",
              color: Colors.grey[700],
              weight: FontWeight.w500,
              size: 15,
            ),
          ],
        ),
        Spacer(),
        CircleAvatar(
          radius: 30,
          child: Icon(Icons.person),
        ),
      ],
    )
    ;
  }
}
