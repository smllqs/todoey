import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:todoey/widgets/outlined_circle_avatar.dart';

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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                OutlinedCircleAvatar(iconData: Icons.person),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
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
                  ),
                ),
                OutlinedCircleAvatar(iconData: CupertinoIcons.bell),
                SizedBox(
                  width: 10,
                ),
                OutlinedCircleAvatar(iconData: CupertinoIcons.square_grid_2x2)
              ],
            ),
            Row(),
          ]),
        ),
      ),
    );
  }
}
