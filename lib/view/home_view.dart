import 'package:counterapp/controller/controller.dart';
import 'package:counterapp/utils/app_color.dart';
import 'package:counterapp/view/about_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    print("Anuska");
    var controller = Get.find<CountController>();
    return Scaffold(
      appBar: AppBar(title: Text("HomePage"),),
      body: Obx((){
        return Column(
        children: [
          InkWell(
            child: Container(
              height: 150,
              width: 250,
              // color: Colors.pinkAccent,
            ),
          ),


          Text("I love flutter so much " , 
          style: TextStyle(fontSize: 10, color:AppColor.secondary),),
         
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
          Gap(20),
          FilledButton(onPressed: (){
Get.to(AboutView());
          }, child: Text("Go to About Page")),


          Text("I love GetX so much " , 
          style: TextStyle(fontSize: 10, color: AppColor.primary),),


          Text("I love Gap so much " , 
          style: TextStyle(fontSize: 10, color:AppColor.primary),),
        ],
      );
      })
    );
  }
}