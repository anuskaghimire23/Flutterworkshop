import 'package:flutter/material.dart';

class TitleCard extends StatelessWidget {
  String ? title;
   TitleCard({
    super.key,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.pink.shade100,
      ),
      child: Text(
        title!,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Colors.redAccent,
        ),
      ),
    );
  }
}
