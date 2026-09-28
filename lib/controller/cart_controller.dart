import 'package:ecommerce/model/cart_model.dart';
import 'package:ecommerce/model/success_model.dart';
import 'package:ecommerce/service/cart_service.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var qty = 1.obs;
  var isLoading = false.obs;
  var result = SuccessModel(success: false, message: null).obs;
  var cartItems = CartModel(sucess: false, data: []).obs;

  Future addToCart(int productId) async {
    try {
      isLoading(true);
      var response = await CartService.addToCart(productId, qty.value);
      if (response.statusCode == 200) {
        result.value = SuccessModel.fromJson(response.data);
        if (result.value.success == true) {
          // Item added to cart
          Get.snackbar("Success", result.value.message!);
          getCartItems();
        } else {
          // Something went wrong
          Get.snackbar("Error", "Something went wrong");
        }
      }
    } finally {
      isLoading(false);
    }
  }

  Future getCartItems() async {
    try {
      isLoading(true);
      var response = await CartService.fetchCart();
      if (response.statusCode == 200) {
        cartItems.value = CartModel.fromJson(response.data);
      }
    } finally {
      isLoading(false);
    }
  }

  Future removeFromCart(int cartId) async {
    try {
      isLoading(true);
      var response = await CartService.removeFromCart(cartId);
      if(response.statusCode==200){
        result.value= SuccessModel.fromJson(response.data);
        if(result.value.success == true){
          // Item remove from cart
          Get.snackbar("Success", result.value.message!);
          getCartItems();
        }else {
// / something went wrong
Get.snackbar("Error", "Something went wrong");
        }
        
      }
    } finally {
      isLoading(false);
    }
  }

  void increment() {
    qty.value++;
    if (qty > 10) {
      qty.value = 10;
    }
  }

  void decrement() {
    qty--;
    if (qty < 1) {
      qty.value = 1;
    }
  }
}
