import 'package:flutter/material.dart';

class Task extends ChangeNotifier {
  String name;
  bool isDone;

  List<Task> taskList = [];

  Task({required this.name, required this.isDone});

  void toggleDone() {
    isDone = !isDone;
  }
}
