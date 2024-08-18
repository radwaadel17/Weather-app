import 'package:app/Views/HomePage.dart';
import 'package:app/cubits/get_weather_cubit/getweathercubit.dart';
import 'package:app/cubits/get_weather_cubit/getweatherstates.dart';
import 'package:app/services/weatherservices.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const App());
  //weatherService(Dio()).getHttp();
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeathercubit(),
      child: CustomMaterialApp(),
    );
  }
}

class CustomMaterialApp extends StatelessWidget {
  const CustomMaterialApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetWeathercubit, WeatherState>(
      builder: (context, state) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: getWeatherColor(
                BlocProvider.of<GetWeathercubit>(context).w?.condition),
          ),
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        );
      },
    );
  }
}

MaterialColor getWeatherColor(String? condition) {
  if (condition == null) {
    return Colors.blue;
  }
  switch (condition) {
    case 'Sunny':
    case 'Clear':
      return Colors.orange;

    case 'Partly cloudy':
    case 'Cloudy':
    case 'Overcast':
      return Colors.blueGrey;

    case 'Mist':
    case 'Fog':
      return Colors.cyan;

    case 'Patchy rain possible':
    case 'Patchy light drizzle':
    case 'Light drizzle':
    case 'Patchy light rain':
    case 'Light rain':
    case 'Light rain shower':
      return Colors.lightBlue;

    case 'Moderate rain at times':
    case 'Moderate rain':
    case 'Moderate or heavy rain shower':
    case 'Heavy rain at times':
    case 'Heavy rain':
    case 'Torrential rain shower':
    case 'Moderate or heavy rain with thunder':
    case 'Patchy light rain with thunder':
      return Colors.indigo;

    case 'Patchy snow possible':
    case 'Patchy light snow':
    case 'Light snow':
    case 'Light snow showers':
    case 'Patchy moderate snow':
    case 'Moderate snow':
    case 'Patchy heavy snow':
    case 'Heavy snow':
    case 'Moderate or heavy snow showers':
    case 'Patchy light snow with thunder':
    case 'Moderate or heavy snow with thunder':
      return Colors.blue;

    case 'Patchy sleet possible':
    case 'Light sleet':
    case 'Light sleet showers':
    case 'Moderate or heavy sleet':
    case 'Moderate or heavy sleet showers':
    case 'Ice pellets':
    case 'Light showers of ice pellets':
    case 'Moderate or heavy showers of ice pellets':
      return Colors.teal;

    case 'Patchy freezing drizzle possible':
    case 'Freezing drizzle':
    case 'Light freezing rain':
    case 'Moderate or heavy freezing rain':
    case 'Heavy freezing drizzle':
      return Colors.teal;

    case 'Thundery outbreaks possible':
      return Colors.deepPurple;

    case 'Blowing snow':
    case 'Blizzard':
      return Colors.lightBlue;

    case 'Freezing fog':
      return Colors.lightBlue;

    default:
      return Colors.blueGrey; // Default color if no match is found
  }
}
