import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String btnName;

  const MyButton({super.key, required this.btnName});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            btnName,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),
          ),
        ));
  }
}
