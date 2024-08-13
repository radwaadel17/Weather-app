import 'package:flutter/material.dart';
class weathermodel {
  final String city;
  final String last_update;
  final double avg_temp;
  final String condition;
  final double mx_temp;
  final double mn_temp;
  const weathermodel(
      {required this.city,
      required this.last_update,
      required this.avg_temp,
      required this.condition,
      required this.mn_temp,
      required this.mx_temp});
      factory weathermodel.fromjson(json){
            return weathermodel(
              city: json['location']['name'],
              last_update: json['current']['last_updated'],
              avg_temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
              condition: json['forecast']['forecastday'][0]['day']['condition']['text'],
              mn_temp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
              mx_temp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
              );
              
      }
}

