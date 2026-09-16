import 'package:codeit/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactView extends StatefulWidget {
  const new({super.key});

  @override
  State<ContactView> createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Page"),
      ),
      body: FilledButton(onPressed: (){
Get.offAll(HomeView());
      }, child: Text("Go to Home page")),
    );
  }
}