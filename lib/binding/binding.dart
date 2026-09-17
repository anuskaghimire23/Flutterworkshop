import 'package:counterapp/controller/controller.dart';
import 'package:get/get.dart';

class ControllerBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<CountController> (CountController(),permanent: true);
  }

}