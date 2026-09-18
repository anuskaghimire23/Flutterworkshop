import 'package:codeit/utils/dio_connector.dart';
import 'package:dio/dio.dart';
class UpcomingService {
  static Future <Response> fetchUpcommingClasses() async{
var response=  await DioConnector.dio.get("upcomings");
return response;
  }
}