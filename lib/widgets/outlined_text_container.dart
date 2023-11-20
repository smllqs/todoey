import 'package:flutter/material.dart';

class OutlinedTextContainer extends StatelessWidget {
  const OutlinedTextContainer({super.key, required this.text, this.size});
  final String text;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(100),
        ),
        border: Border.all(width: 1.2, color: Colors.black),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: size,
                color: Colors.black,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
