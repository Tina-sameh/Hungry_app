import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hungry_app/core/constants/appAssets.dart';
import 'package:hungry_app/core/constants/app_colors.dart';

class SplashView extends StatelessWidget {
  static const String routeName="splash";
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.primaryColor ,

    body: Column(
      children: [
        Expanded(
          flex: 5,
          child: Center(
            child: SvgPicture.asset(AppAssets.logo)
          ),
        ),
        Spacer(),
        Image.asset(AppAssets.splash)
      ],
    ),
    );
  }
}
