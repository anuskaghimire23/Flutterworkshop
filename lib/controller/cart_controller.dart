import 'package:get/get.dart';

class CartController extends GetxController{
  var qty=1.obs;
  var isLoading = false.obs;
  void increment(){
    qty.value++;
    if(qty >10){
      qty.value=10;

    }
  }
  void decrement(){
    qty--;
    if(qty<1){
      qty.value=1;
    }
  }
}