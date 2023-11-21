import 'package:flutter/material.dart';

class AddTaskField extends StatelessWidget {
  const AddTaskField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TextField(
      autofocus: true,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.white70, fontSize: 18),
      cursorColor: Colors.white24,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white38),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
    );
  }
}
