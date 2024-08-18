import 'package:app/cubits/get_weather_cubit/getweatherstates.dart';
import 'package:app/models/weathermodel.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../services/weatherservices.dart';
class GetWeathercubit extends Cubit<WeatherState> {
  GetWeathercubit() : super(NoweatherState());
  weathermodel? w ;
 getWeather({required String Value}) async {
    try{
        w = await weatherService(Dio()).GetRequest(cityName: Value);
       emit(WeatherLoadedState());
    }catch(e){
     emit(WeatherFaluireState());
    }
  }
}