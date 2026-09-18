import 'package:codeit/controller/upcomming_controller.dart';
import 'package:get/get.dart';

class ControllerBinding extends Bindings{
  @override
  void dependencies() {
   Get.put<UpcommingController> (UpcommingController(),permanent: true);
  }

}