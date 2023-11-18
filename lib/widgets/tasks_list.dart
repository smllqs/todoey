import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key, required this.tasks});
  final List<Task> tasks;

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
              taskTitle: widget.tasks[index].name,
              isChecked: widget.tasks[index].isDone,
              changeState: (val) {
                setState(() {
                  widget.tasks[index].toggleDone();
                });
              });
        },
        itemCount: widget.tasks.length);
  }
}


// [
//     Task(name: 'Buy Milk', isDone: false),
//     Task(name: 'Clean Room', isDone: false),
//     Task(name: 'Finish this course', isDone: false),
//   ];