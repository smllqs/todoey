import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/controller/task_controller.dart';
import 'package:todoey/screens/add_new_task_screen.dart';
import 'package:todoey/screens/task_management_screen.dart';
import 'package:todoey/screens/tasks_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => TaskController(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TaskManagementScreen(),
    );
  }
}
