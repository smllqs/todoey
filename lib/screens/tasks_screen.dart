import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
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
            const Text(
              '12 Tasks',
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
