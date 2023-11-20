import 'package:flutter/material.dart';
import 'package:todoey/widgets/custom_text.dart';
import 'package:todoey/widgets/outlined_circle_avatar.dart';

class AddNewTaskScreen extends StatelessWidget {
  const AddNewTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff1b1b1b),
      child: SafeArea(
        child: Container(
          color: const Color(0xff1b1b1b),
          padding: const EdgeInsets.all(20),
          child: const Column(children: [
            Row(
              children: [
                OutlinedCircleAvatar(
                  iconData: Icons.arrow_back_ios_new_outlined,
                  color: Colors.white54,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('data')
              ],
            )
          ]),
        ),
      ),
    );
  }
}
