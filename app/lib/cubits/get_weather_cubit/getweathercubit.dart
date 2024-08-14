import 'package:app/cubits/get_weather_cubit/getweatherstates.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../Views/SearchPage.dart';
import '../../services/weatherservices.dart';
class GetWeathercubit extends Cubit<WeatherState> {
  GetWeathercubit(super.initialState);
  getWeather({required String value}) async {
     w = await weatherService(Dio()).GetRequest(cityName: value);
  }
}