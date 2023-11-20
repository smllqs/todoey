import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/controller/task_controller.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskController>(
      builder: (BuildContext context, taskController, Widget? child) {
        return ListView.builder(
            itemBuilder: (context, index) {
              final task = taskController.taskList[index];
              return TaskTile(
                taskTitle: task.name,
                isChecked: task.isDone,
                changeState: (val) {
                  taskController.updateTask(task);
                },
                longPressed: () {
                  taskController.deleteTask(task);
                },
              );
            },
            itemCount: taskController.taskCount);
      },
    );
  }
}
