import 'package:counterapp/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class AboutView extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<CountController>();
    return Scaffold(
      appBar: AppBar(title: Text("About Page"),),
      body: Obx((){
        return Column(
children: [
  Text("${controller.count}", style: TextStyle(fontSize: 18),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            FilledButton(onPressed: (){
                controller.decrement();
            }, child: Text("-")),
            Gap(10),
          
            FilledButton(onPressed: (){
controller.increment();
            }, child: Text("+")),
          ],),
],
        );
      })
    );
  }
}