import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(0, 5, 5, 5))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(0, 5, 5, 5))),
          fillColor: Color.fromRGBO(241, 240, 240, 1),
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: const Color.fromARGB(96, 7, 7, 7)),
        ),
      ),
    );
  }
}
