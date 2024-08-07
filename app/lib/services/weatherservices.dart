import 'package:dio/dio.dart';

class weatherService {
  final Dio dio ;
  const weatherService(this.dio);
  
  void getHttp() async {
  final response = await dio.get('http://api.weatherapi.com/v1/forecast.json?key=d9c25a6552f64bb4bcc183308240708&q=Cairo&days=1&aqi=no&alerts=no');
}

}