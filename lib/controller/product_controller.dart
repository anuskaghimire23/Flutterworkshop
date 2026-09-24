import 'package:ecommerce/model/product_model.dart';
import 'package:ecommerce/service/product_service.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
var products = ProductModel(success: false, data: []).obs;
var isLoading=false.obs;

Future getProducts() async{
  try{
isLoading(true);
var response = await ProductService.fetchProducts();
if(response.statusCode==200){
  products.value=ProductModel.fromJson(response.data);
}
  }finally{
isLoading(false);
  }
}

@override
  void onInit() {
    // TODO: implement onInit
    
    getProducts();
  }
}