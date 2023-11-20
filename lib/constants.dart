import 'package:flutter/material.dart';

const Map<int, String> priorityLevel = {
  1: 'High Priority',
  2: 'Medium Priority',
  3: 'Low Priority'
};

const Map<int, String> daysOftheWeek = {
  1: 'Monday',
  2: 'Tuesday',
  3: 'Wednesday',
  4: 'Thursday',
  5: 'Friday',
  6: 'Saturday',
  7: 'Sunday'
};

const Map<int, String> monthsOftheYear = {
  1: 'January',
  2: 'February',
  3: 'March',
  4: 'April',
  5: 'May',
  6: 'June',
  7: 'July',
  8: 'August',
  9: 'September',
  10: 'October',
  11: 'November',
  12: 'December',
};
final date = DateTime.now();

final kOutlinedButtonStyle = ButtonStyle(
    shape: MaterialStatePropertyAll<OutlinedBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
    side: const MaterialStatePropertyAll<BorderSide>(
        BorderSide(width: 1.0, color: Colors.white)),
    foregroundColor: const MaterialStatePropertyAll<Color>(Colors.white));
