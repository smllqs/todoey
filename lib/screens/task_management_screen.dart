import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey/widgets/outlined_circle_avatar.dart';
import 'package:todoey/constants.dart';

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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Row(
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
                ),
                const OutlinedCircleAvatar(iconData: CupertinoIcons.calendar),
              ],
            ),
            CustomText(
                text: '${date.day} ${daysOftheWeek[date.weekday]}', size: 35)
          ]),
        ),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    required this.size,
  });
  final String text;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size, color: Colors.white),
    );
  }
}
