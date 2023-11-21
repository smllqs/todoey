import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/controller/task_controller.dart';
import 'package:todoey/screens/add_task_screen.dart';
import 'package:todoey/widgets/tasks_list.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () => showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) => SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Consumer<TaskController>(
                  builder: (context, taskController, child) {
                    return AddTaskScreen(
                      onpress: () {
                        setState(() {
                          taskController.addToTaskList(
                              taskController.controller.value.text);
                          taskController.controller.clear();
                        });
                        Navigator.pop(context);
                      },
                    );
                  },
                )),
          ),
        ),
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.list,
                        size: 30.0, color: Colors.lightBlueAccent)),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'Todoey',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  Provider.of<TaskController>(context).taskCount == 1
                      ? '${Provider.of<TaskController>(context).taskCount} task'
                      : '${Provider.of<TaskController>(context).taskCount} tasks',
                  style: const TextStyle(color: Colors.white, fontSize: 18.0),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: const TasksList(),
            ),
          )
        ],
      ),
    );
  }
}
