import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;

  SmallText({
    super.key,
    this.height=1.2,
    this.color = const Color(0xFFccc7c5),
    required this.text,
    this.size = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'Schyler',
          color: color,
          fontSize: size,
          fontWeight: FontWeight.w400, 
          height: height),
    );
  }
}