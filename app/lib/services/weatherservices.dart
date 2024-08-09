import 'package:app/models/weathermodel.dart';
import 'package:dio/dio.dart';

class weatherService {
  final Dio dio ;
  final String BaseUrl = 'http://api.weatherapi.com/v1';
  const weatherService(this.dio);
  Future<weathermodel> GetRequest({required String cityName})async {
  Response response = await dio.get('$BaseUrl/forecast.json?key=d9c25a6552f64bb4bcc183308240708&q=$cityName&days=1&aqi=no&alerts=no');
  weathermodel w1 = weathermodel.fromjson(response.data);
  return w1;
}
}
