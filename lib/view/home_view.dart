import 'package:codeit/controller/upcomming_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    var controller= Get.find<UpcommingController>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
         
        ),
        body:Obx((){
          if(controller.isLoading==true){
            return Center(
              child: CircularProgressIndicator(),
            );
          }else{
            return SingleChildScrollView(
              child: Column(
                children: [
                  ListView.builder(
                    itemCount: controller.upcoming.value.data ?.length ??0,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
      
                    itemBuilder: (BuildContext context ,int index)
                    {
                      var course = controller.upcoming.value.data[index];
                      return ListTile(
                        leading:Image.network("${course.courseImage}") ,
                        title: Text("${course.courseName}"),
                        subtitle: Text("${course.startDate}" , style: TextStyle(fontSize: 20),),
                        trailing: Text("${course.actualPrice}"),

      
                      );
                    })
                ],
              ),
            );
          }
        })
      ),
    );
  }
}