import 'package:app/Views/SearchPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Componets/NoWeatherBody.dart';
import '../Componets/WeatherBody.dart';
import '../cubits/get_weather_cubit/getweathercubit.dart';
import '../cubits/get_weather_cubit/getweatherstates.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Weather app',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                   return SearchPage() ;
                  }));
                },
                icon: const Icon(
                  Icons.search,
                )),
          ],
        ),
        body: BlocBuilder<GetWeathercubit , WeatherState>(
          builder: (context, state) {
            if(state is NoweatherState){
              return const NoWeatherBody();
            }
            else if (state is  WeatherLoadedState ){
              return  WeatherBody();
            }
            else {
              return const Center(
                child: Text(
                  'OOPS THERE WAS AN ERROR!',
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
              );
            }
          },
        )
      );
  }
} 
