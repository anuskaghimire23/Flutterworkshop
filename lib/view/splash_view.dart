import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Icon(Icons.shopping_bag,size: 100,),
          Text("Cart",style: TextStyle(fontSize: 30),)
        ],),
      ),
    );
  }
}