import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  String ? imageurl , courseName;
   CourseCard({
    super.key,
    required this.imageurl,
    required this.courseName,
  
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:10),
      child: Container(
        width:171,
        height: 140,
        child: Column(
          children: [
            Image.network(imageurl ! , height: 90,width:170,),
            Text(courseName!)
       ],
        ),
      ),
    );
  }
}
