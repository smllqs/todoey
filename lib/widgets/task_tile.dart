import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/controller/task_controller.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final void Function(bool?)? changeState;
  final void Function()? longPressed;

  const TaskTile({
    super.key,
    required this.taskTitle,
    required this.isChecked,
    required this.changeState,
    this.longPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressed,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: changeState,
      ),
    );
  }
}
