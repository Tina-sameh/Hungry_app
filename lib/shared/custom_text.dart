import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String text;
  Color? color;
  double? size;
  FontWeight? weight;

  CustomText({super.key, required this.text,  this.size,  this.weight,  this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: weight,
        fontSize: size,
      ),
    );
  }
}
