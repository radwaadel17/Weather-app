import 'dart:developer';
import 'package:app/models/weathermodel.dart';
import 'package:dio/dio.dart';
class weatherService {
  final Dio dio;
  final String BaseUrl = 'http://api.weatherapi.com/v1';
  final String ApiKey = 'd9c25a6552f64bb4bcc183308240708';
  const weatherService(this.dio);
  Future<weathermodel> GetRequest({required String cityName}) async {
    try {
      Response response = await dio.get(
          '$BaseUrl/forecast.json?key=$ApiKey&q=$cityName&days=1&aqi=no&alerts=no');
      weathermodel w1 = weathermodel.fromjson(response.data);
      return w1;
    } on DioException catch (e) {
      
      final String MessageError =
          e.response?.data['error']['message'] ?? 'oops there was an error !!';
      throw Exception(MessageError);
    } catch (e) {
      log('Exception caught: ${e.toString()}');
      throw Exception('oops there was an error .. please try later');
    }
  }
}
 // important notes : 
 /*   Response response = await dio.get('$BaseUrl/forecast.json?key=$ApiKey&q=$cityName&days=1&aqi=no&alerts=no');
     if(response.statusCode == 200 ){
           weathermodel w1 = weathermodel.fromjson(response.data);
     }
     else {
       final String MessageError = response.data['error']['message'];
       throw Exception(MessageError);
     } */