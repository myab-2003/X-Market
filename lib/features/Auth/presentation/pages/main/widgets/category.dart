import 'package:flutter/material.dart';

class category extends StatelessWidget {
   category({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Text(
        name,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Color(0xff4c53a5),
        ),
      ),
    );
  }
}
