import 'package:ecommerce/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // w1 Logo
              FlutterLogo(size: 50),
              Gap(10),
              // w2 Email
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your email",
                  label: Text("Email"),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              Gap(10),
              // w3 Password
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your password",
                  label: Text("Password"),
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.visibility),
                  ),
                ),
              ),

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
                child: FilledButton(onPressed: () {}, child: Text("Login")),
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
    );
  }
}
