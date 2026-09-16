import 'package:codeit/view/contact_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServiceView extends StatefulWidget {
  const new({super.key});

  @override
  State<ServiceView> createState() => _ServiceViewState();
}

class _ServiceViewState extends State<ServiceView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Service Page"),),
      body: FilledButton(onPressed: (){
Get.to(ContactView());
      }, child: Text("Contact page")),
    );
  }
}