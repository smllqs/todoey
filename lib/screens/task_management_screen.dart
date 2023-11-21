import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey/widgets/custom_text.dart';
import 'package:todoey/widgets/outlined_circle_avatar.dart';
import 'package:todoey/constants.dart';
import 'package:todoey/widgets/overview_task_tile.dart';

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
      body: Container(
        margin: const EdgeInsets.only(top: 45),
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                OutlinedCircleAvatar(iconData: Icons.person),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello Somelele',
                        style: TextStyle(color: Colors.white30, fontSize: 12),
                      ),
                      CustomText(
                        text: 'Good Morning!',
                        size: 18,
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
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: '${monthsOftheYear[date.month]!}, ${date.year}',
                  size: 25,
                  fontWeight: FontWeight.w300,
                ),
                const OutlinedCircleAvatar(iconData: CupertinoIcons.calendar),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: '${date.day} ${daysOftheWeek[date.weekday]}',
                  size: 35,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
            OutlinedButton(
                onPressed: () {},
                style: kOutlinedButtonStyle,
                child: const CustomText(
                    text: 'Boy\'s holiday',
                    size: 14,
                    fontWeight: FontWeight.w300)),
            const Divider(
              thickness: 1,
              height: 23,
              color: Colors.white38,
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomText(text: 'Today\'s Tasks', size: 17),
            const SizedBox(
              height: 15,
            ),
            Expanded(
                child: ListView(
              children: [
                OverviewTaskTile(
                    task: 'Virtual Verse Application Design',
                    priorityLevel: priorityLevel[2]!),
                OverviewTaskTile(
                    task: 'Finish Task Management App',
                    priorityLevel: priorityLevel[1]!),
                OverviewTaskTile(
                    task: 'Finish Task Management App',
                    priorityLevel: priorityLevel[1]!),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
