import 'package:flutter/material.dart';
import 'package:todoey/widgets/custom_text.dart';

class PriorityWidget extends StatelessWidget {
  const PriorityWidget({
    super.key,
    required this.level,
    required this.levelString,
    required this.color,
  });
  final int level;
  final String levelString;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(levelString);
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        height: 150,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomText(text: level.toString(), size: 45, color: Colors.black),
            CustomText(
              text: levelString,
              size: 20,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
