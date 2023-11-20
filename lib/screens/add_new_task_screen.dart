import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey/widgets/custom_text.dart';
import 'package:todoey/widgets/outlined_circle_avatar.dart';

class AddNewTaskScreen extends StatelessWidget {
  const AddNewTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1b1b1b),
      body: SafeArea(
        child: Container(
          color: const Color(0xff1b1b1b),
          padding: const EdgeInsets.all(20),
          child: const Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedCircleAvatar(
                  iconData: Icons.arrow_back_ios_new_outlined,
                  color: Colors.white54,
                ),
                CustomText(text: 'Add New Task', size: 18),
                OutlinedCircleAvatar(
                  iconData: CupertinoIcons.ellipsis,
                  color: Colors.white54,
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
