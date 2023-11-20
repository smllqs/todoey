import 'package:flutter/material.dart';
import 'package:todoey/widgets/custom_text.dart';

class IntervalColumn extends StatelessWidget {
  const IntervalColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomText(
          text: '10',
          size: 25,
          fontWeight: FontWeight.w400,
          color: Colors.grey,
        ),
        const CustomText(
          text: '00',
          size: 17,
          color: Colors.grey,
        ),
        Container(
          height: 20,
          width: 1,
          color: Colors.grey,
        ),
        const CustomText(
          text: '12',
          size: 25,
          fontWeight: FontWeight.w400,
          color: Colors.grey,
        ),
        const CustomText(
          text: '00',
          size: 17,
          color: Colors.grey,
        )
      ],
    );
  }
}
