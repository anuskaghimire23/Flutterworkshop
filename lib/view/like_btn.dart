import 'package:flutter/material.dart';

class LikeButton extends StatefulWidget {
  const new({super.key});

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLiked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){
 setState(() {
   isLiked= !isLiked;
 });
            },
            child: Icon(
              // condition ? true bhaye k dekhauney : false baye k dekhauney
              isLiked ? Icons.favorite :Icons.favorite_border,
              color:isLiked ? Colors.red : Colors.grey,
              size : 100
            ),
          )
        ],
      ),
    );
  }
}