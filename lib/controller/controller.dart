import 'package:get/get.dart';

class CountController extends GetxController{
RxInt count=1.obs;

void increment(){
  count.value++;
  print(count.value);
  if(count>10){
    count.value=10;
    Get.snackbar("Warning", "You cannot go more than 10"  , snackPosition: SnackPosition.BOTTOM);
  }

}
void decrement(){
  count.value--;
   print(count.value);
   if(count<1){
    count.value=1;
    Get.snackbar("Warning", "You cannot go less than 1", snackPosition: SnackPosition.TOP);
   }
}
}