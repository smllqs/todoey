import 'package:flutter/material.dart';

class TaskManagementScreen extends StatefulWidget {
  const TaskManagementScreen({super.key});

  @override
  State<TaskManagementScreen> createState() => _TaskManagementScreenState();
}

class _TaskManagementScreenState extends State<TaskManagementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1b1b1b),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: const Column(children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Color(0xff1b1b1b),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello Somelele',
                      style: TextStyle(color: Colors.white30, fontSize: 12),
                    ),
                    Text(
                      'Good Morning!',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                )
              ],
            ),
            Row(),
          ]),
        ),
      ),
    );
  }
}
