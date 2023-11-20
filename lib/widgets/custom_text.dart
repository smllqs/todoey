import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    required this.size,
    this.fontWeight,
    this.color,
  });
  final String text;
  final double size;
  final Color? color;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size, color: color ?? Colors.white, fontWeight: fontWeight),
    );
  }
}
