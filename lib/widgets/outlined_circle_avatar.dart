import 'package:flutter/material.dart';

class OutlinedCircleAvatar extends StatelessWidget {
  const OutlinedCircleAvatar(
      {super.key, required this.iconData, this.text, this.size, this.color});
  final IconData iconData;
  final String? text;
  final double? size;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(100),
        ),
        border: Border.all(width: .8, color: Colors.white54),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Icon(
            iconData,
            color: color ?? Colors.white,
            size: size,
          ),
        ),
      ),
    );
  }
}
