import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey/constants.dart';
import 'package:todoey/widgets/add_task_field.dart';
import 'package:todoey/widgets/custom_text.dart';
import 'package:todoey/widgets/outlined_circle_avatar.dart';
import 'package:todoey/widgets/priority_widget.dart';

enum PriorityLevel { low, medium, high }

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({super.key});
  static const id = '/addNewTask';

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  // PriorityLevel _selected = PriorityLevel.high;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1b1b1b),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff1b1b1b),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const OutlinedCircleAvatar(
                iconData: Icons.arrow_back_ios_new_outlined,
                color: Colors.white,
              ),
            ),
            const CustomText(text: 'Add New Task', size: 18),
            const OutlinedCircleAvatar(
              iconData: CupertinoIcons.ellipsis,
              color: Colors.white,
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          height: double.maxFinite,
          color: const Color(0xff1b1b1b),
          padding: const EdgeInsets.only(
              // bottom: MediaQuery.of(context).viewInsets.bottom,
              top: 20,
              left: 20,
              right: 20),
          child: const SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomText(
                text: 'Select Priority',
                size: 40,
                fontWeight: FontWeight.w200,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: PriorityWidget(
                      level: 1,
                      levelString: 'High',
                      color: kHighLevelColour,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: PriorityWidget(
                      level: 2,
                      levelString: 'Medium',
                      color: kMediumLevelColour,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: PriorityWidget(
                      level: 3,
                      levelString: 'Low',
                      color: kLowLevelColour,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              CustomText(
                text: 'Enter your task',
                size: 35,
                fontWeight: FontWeight.w200,
              ),
              SizedBox(
                height: 15,
              ),
              AddTaskField(),
              SizedBox(
                height: 10,
              )
            ]),
          ),
        ),
      ),
    );
  }
}
