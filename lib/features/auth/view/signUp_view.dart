import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/appAssets.dart';
import 'package:hungry_app/core/constants/app_colors.dart';
import 'package:hungry_app/features/auth/widgets/custom_btn.dart';
import 'package:hungry_app/shared/custom_text.dart';
import 'package:hungry_app/shared/custom_textField.dart';

class SignupView extends StatefulWidget {
  static const String routeName = "SignupView";

  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _confirmPassController = TextEditingController();
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
        body: SingleChildScrollView(
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
                    hint: "Name",
                    secure: false,
                    controller: _nameController,
                    message: 'Please fill your name',
                  ),
                  Gap(40),
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
                  Gap(40),

                  CustomTextfield(
                    hint: "Confirm Password",
                    secure: true,
                    controller: _confirmPassController,
                    message: 'Please fill Confirm Password',
                  ),
                  Gap(70),
CustomAuthBtn(onTap: (){
  if(_key.currentState!.validate()){
    //Navigator.pushNamed(context, routeName)
  }
}, btnName: "Sign up")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
