import 'package:ecommerce/routes/app_routes.dart';
import 'package:ecommerce/view/login_view.dart';
import 'package:ecommerce/view/regsiter_view.dart';
import 'package:ecommerce/view/splash_view.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages=[
    GetPage(name: AppRoutes.splash, page: ()=> SplashView()),
    GetPage(name: AppRoutes.login, page: ()=> LoginView()),
    GetPage(name: AppRoutes.register, page: ()=> RegsiterView())
  ];
}