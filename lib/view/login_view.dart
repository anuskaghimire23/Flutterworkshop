import 'package:ecommerce/controller/auth_controller.dart';
import 'package:ecommerce/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class LoginView extends GetView<AuthController> {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    var key= GlobalKey<FormState>();
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key:key,
            child: Column(
              children: [
                // w1 Logo
                FlutterLogo(size: 50),
                Gap(10),
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
                Gap(10),
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
                Gap(10),
                // w4
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text("Forgot Password")],
                ),
                Gap(10),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: FilledButton(onPressed: () {
                    if(key.currentState!.validate()){
                      Loader.show(context);
                      controller.login();
                      Loader.hide();
                    }
                  }, child: Text("Login")),
                ),
                Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text("Don't have an account ?"),
                  InkWell(
                    onTap: (){
                  Get.toNamed(AppRoutes.register);
                    },
                    child:  Text("Register"),
                  )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}