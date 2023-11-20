import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey/widgets/custom_text.dart';
import 'package:todoey/widgets/outlined_circle_avatar.dart';

enum PriorityLevel { low, medium, high }

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({super.key});

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  PriorityLevel _selected = PriorityLevel.high;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1b1b1b),
      body: SafeArea(
        child: Container(
          color: const Color(0xff1b1b1b),
          padding: const EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const Row(
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
            ),
            const SizedBox(height: 40),
            const TextField(
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white70, fontSize: 18),
              cursorColor: Colors.white24,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white38),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white38),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
              ),
            ),
            const SizedBox(height: 40),
            const CustomText(
              text: 'Set Priority',
              size: 22,
              fontWeight: FontWeight.w200,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [RadioPriority(selected: _selected)],
            )
          ]),
        ),
      ),
    );
  }
}

class RadioPriority extends StatelessWidget {
  const RadioPriority({
    super.key,
    required PriorityLevel selected,
  }) : _selected = selected;

  final PriorityLevel _selected;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<PriorityLevel>(
          value: PriorityLevel.high,
          groupValue: _selected,
          onChanged: (selected) {
            // setState(() {
            //   _selected = selected!;
            // });
          },
        ),
        const CustomText(text: 'High', size: 15),
      ],
    );
  }
}
