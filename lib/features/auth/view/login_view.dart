import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/appAssets.dart';
import 'package:hungry_app/core/constants/app_colors.dart';
import 'package:hungry_app/features/auth/widgets/custom_btn.dart';
import 'package:hungry_app/shared/custom_text.dart';
import 'package:hungry_app/shared/custom_textField.dart';

class LoginView extends StatefulWidget {
  static const String routeName = "Login";

  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    double gap1 = MediaQuery.of(context).size.height * .2;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: _key,
              child: Column(
                children: [
                  Gap(gap1),
                  SvgPicture.asset(AppAssets.logo, width: 300),
                  Gap(10),
                  CustomText(
                    text: "Welcome back , Discover The Fast Food",
                    size: 13,
                    weight: FontWeight.w400,
                    color: Colors.white,
                  ),
                  Gap(50),
                  CustomTextfield(
                    hint: "Email address",
                    secure: false,
                    controller: _emailController,
                    message: 'Please fill Email',
                  ),
                  Gap(40),
                  CustomTextfield(
                    hint: "Password",
                    secure: true,
                    controller: _passController,
                    message: 'Please fill password',
                  ),
                  Gap(100),
                  CustomAuthBtn(
                    onTap: () {
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        if (_key.currentState!.validate()) {
                          // مثلا: الانتقال لشاشة تانية
                          Navigator.pushNamed(context, "NextScreen");
                        }
                      });
                    },
                    btnName: "Login",
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
