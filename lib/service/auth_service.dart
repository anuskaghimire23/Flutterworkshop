import 'package:ecommerce/utils/dio_connector.dart';
import 'package:get/get.dart';

class AuthService {
  static Future<dynamic> register(
    String name,
    String email,
    String password,
    String whatsapp,
  ) async {
    var response = await DioConnector.dio.post(
      "register",
      data: {
        "name": name,
        "email": email,
        "password": password,
        "whatsapp": whatsapp,
      },
    );
    return response;
  }

  // login
  static Future<dynamic> login(String email,
    String password,) async{
    var response =await DioConnector.dio.post("login" ,queryParameters: {
      "email" : email,
      "password" : password,
    },);
    return response;
  }
}
