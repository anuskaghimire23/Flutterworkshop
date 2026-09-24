import 'package:ecommerce/controller/auth_controller.dart';
import 'package:ecommerce/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class RegsiterView extends GetView<AuthController> {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    var key=GlobalKey<FormState>();
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key:key,
            child: Column(
              children: [
                // w1 Name
                TextFormField(
                  controller: controller.name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter your name",
                    label: Text("Name"),
                    prefixIcon: Icon(Icons.person),
                  ),
                  validator: (value)=>value!.isEmpty?'Name Required':null,
                ),
            
                Gap(20),
                // w2 Email
                TextFormField(
                  controller: controller.email,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter your email",
                    label: Text("Email"),
                    prefixIcon: Icon(Icons.email),
                  ),
                   validator: (value)=>value!.isEmpty?'Email Required':null,
                ),
                Gap(20),
                // w3 Password
                Obx((){
                return  TextFormField(
                  controller: controller.password,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter your password",
                    label: Text("Password"),
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(
                      onPressed: () {
                        controller.togglePassword();
                      },
                      icon: Icon(Icons.visibility),
                    ),
                  ),
                  obscureText: controller.hidePassword.value,
                   validator: (value)=>value!.isEmpty?'Password Required':null,
                );
            
               }),
            Gap(20),
                TextFormField(
                  controller: controller.whatsapp,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter your number",
                    label: Text("Phone no."),
                    prefixIcon: Icon(Icons.phone),
                  ),
                   validator: (value)=>value!.isEmpty?'Phone Required':null,
                ),
            Gap(20),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: 
                FilledButton(onPressed: (){
                  if(key.currentState!.validate()){
                    print("Success");
                    controller.register();
                  }
                }, child: Text("Register")),),
                Gap(20),
            
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  Text("Already have an account?"),
                  InkWell(
                    onTap: (){
                       Get.toNamed(AppRoutes.login);
                    },child: Text("Login"),
                  )
                  
                ],)
              ],
            ),
          ),
        ),
      ),
    );
  }
}