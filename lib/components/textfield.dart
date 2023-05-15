import 'package:flutter/material.dart';

class MyTexfield extends StatelessWidget {
  final controller;
  final String hntname;
  final bool obscuredtext;

  const MyTexfield(
      {super.key,
      required this.hntname,
      required this.obscuredtext,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: 300,
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
              hintText: hntname, hintStyle: TextStyle(color: Colors.black26)),
          obscureText: obscuredtext,
        ),
      ),
    );
  }
}
