import 'package:dio/dio.dart';

class DioConnector {
 static final dio = Dio(
  BaseOptions(
    baseUrl: "https://codeit.com.np/api/",
    headers: {
      "Accept" :"application/json",
      "Content_Type": "application/json",
    }
  )
 );
}