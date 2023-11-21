import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey/widgets/custom_text.dart';
import 'package:todoey/widgets/interval_column.dart';
import 'package:todoey/widgets/outlined_text_container.dart';

class OverviewTaskTile extends StatelessWidget {
  const OverviewTaskTile({
    super.key,
    required this.task,
    required this.priorityLevel,
    required this.priorityColor,
  });
  final String task;
  final String priorityLevel;
  final Color priorityColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const IntervalColumn(),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            constraints: const BoxConstraints(minHeight: 150),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: priorityColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.black26,
                  child: Icon(
                    CupertinoIcons.person,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    OutlinedTextContainer(text: priorityLevel),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      constraints: const BoxConstraints(maxWidth: 230),
                      child: CustomText(
                          text: task,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          size: 23),
                    ),
                    const CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Icon(
                          CupertinoIcons.arrow_up_right,
                          color: Color(0xffd4fe8b),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
