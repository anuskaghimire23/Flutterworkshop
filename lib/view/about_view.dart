import 'package:codeit/view/service_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutView extends StatefulWidget {
  const new({super.key});

  @override
  State<AboutView> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Page"),
      
      
      ),
      body: FilledButton(onPressed: (){
Get.to(ServiceView());
      }, child: Text("SErvice page")),
    );
  }
}