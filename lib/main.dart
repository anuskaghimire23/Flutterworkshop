import 'package:ecommerce/bindings/controller_binding.dart';
import 'package:ecommerce/routes/app_pages.dart';
import 'package:ecommerce/view/login_view.dart';
import 'package:ecommerce/view/regsiter_view.dart';
import 'package:ecommerce/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      initialBinding: ControllerBinding(),
      getPages: AppPages.pages,
      home: SplashView(),
    );
  }
}

