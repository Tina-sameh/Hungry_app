import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../core/constants/app_colors.dart';

class CustomTextfield extends StatefulWidget {
  String hint;
  String message;
  bool secure;
  TextEditingController controller;

  CustomTextfield({
    super.key,
    required this.hint,
    required this.secure,
    required this.controller,
    required this.message,
  });

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  late bool isSecure;

  @override
  void initState() {
    isSecure = widget.secure;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: isSecure,
      validator: (v) {
        if(v==null || v.isEmpty){
          return widget.message;
        }
        null;
      },
      cursorColor: AppColors.primaryColor,
      cursorHeight: 30,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.white),
        ),
        hintText: widget.hint,
        hintStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: AppColors.primaryColor),
        fillColor: Colors.white,
        filled: true,
        suffixIcon:widget.secure? GestureDetector(
          onTap: () {
            setState(() {
              isSecure = !isSecure;
            });
          },
          child: Icon(CupertinoIcons.eye_fill),
        ):null,
      ),
    );
  }
}
