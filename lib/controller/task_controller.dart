import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class TaskController extends ChangeNotifier {
  // ignore: prefer_final_fields
  List<Task> _taskList = [];
  TextEditingController controller = TextEditingController();

  UnmodifiableListView<Task> get taskList {
    return UnmodifiableListView(_taskList);
  }

  int get taskCount {
    return _taskList.length;
  }

  void addToTaskList(String name) {
    _taskList.add(Task(name: name, isDone: false));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _taskList.remove(task);
    notifyListeners();
  }
}
