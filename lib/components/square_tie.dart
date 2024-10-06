import 'package:flutter/material.dart';

class SquareTie extends StatelessWidget {
  final String imagePath;
  const SquareTie({super.key,required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      
      decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 2),borderRadius: BorderRadius.circular(30)),
      child: Image.asset(imagePath,height: 30,),
    );
  }
}
