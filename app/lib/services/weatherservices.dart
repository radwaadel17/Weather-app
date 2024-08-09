import 'package:app/models/weathermodel.dart';
import 'package:dio/dio.dart';

class weatherService {
  final Dio dio ;
  const weatherService(this.dio);
  Future<weathermodel> GetRequest(String Value)async {
  final response = await dio.get('http://api.weatherapi.com/v1/forecast.json?key=d9c25a6552f64bb4bcc183308240708&q=$Value&days=1&aqi=no&alerts=no');
  Map<dynamic , dynamic > json = response.data ;
  return weathermodel.fromjson(json);
}
}