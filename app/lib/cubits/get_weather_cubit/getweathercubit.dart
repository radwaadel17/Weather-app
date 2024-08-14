import 'package:app/cubits/get_weather_cubit/getweatherstates.dart';
import 'package:app/models/weathermodel.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../services/weatherservices.dart';
class GetWeathercubit extends Cubit<WeatherState> {
  GetWeathercubit() : super(NoweatherState());
  getWeather({required String value}) async {
    try{
       weathermodel w = await weatherService(Dio()).GetRequest(cityName: value);
       emit(WeatherLoadedState());
    }catch(e){
     emit(WeatherFaluireState());
    }
  }
}