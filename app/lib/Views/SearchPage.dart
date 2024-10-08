
import 'dart:developer';
import 'package:app/cubits/get_weather_cubit/getweathercubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/models/weathermodel.dart';
import 'package:app/services/weatherservices.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';


class SearchPage extends StatelessWidget {
  const SearchPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Search a city ',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Center(
          child: TextField(
            onSubmitted: (value){
             BlocProvider.of<GetWeathercubit>(context).getWeather(Value: value);
             Navigator.pop(context); 
            },
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 30 , horizontal: 16) ,
              labelText: 'Search',
              border:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              hintText: 'Enter city name',
              suffixIcon:IconButton(onPressed: (){
              }, icon: const Icon(Icons.search)) ,
            ),
          ),
        ),
      ),
    );
  }
}
