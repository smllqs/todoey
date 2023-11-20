import 'package:flutter/material.dart';

class OutlinedCircleAvatar extends StatelessWidget {
  const OutlinedCircleAvatar({super.key, required this.iconData});
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(100),
        ),
        border: Border.all(width: .8, color: Colors.white54),
      ),
      child: Center(
        child: Icon(
          iconData,
          color: Colors.white,
        ),
      ),
    );
  }
}
