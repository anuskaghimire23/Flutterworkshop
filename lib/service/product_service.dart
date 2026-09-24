import 'package:ecommerce/utils/dio_connector.dart';

class ProductService {
  static Future <dynamic> fetchProducts() async{
    var resposne = await DioConnector.dio.get("products");
    return resposne;
  }
}