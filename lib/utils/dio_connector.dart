import 'package:dio/dio.dart';

class DioConnector{
  static final dio= Dio(
    BaseOptions(
      baseUrl:"https://codeit.com.np/api/" ,
      headers:{
        "Accept" : "application/json",
        "Content-type": "application/json",
        "Authorization" : "Bearer 17698|BItdRO9vQ48K0xGRi2FidoDDf0fwIFYrvAEgGQCJab42dfec",
      }
    )
  );
}