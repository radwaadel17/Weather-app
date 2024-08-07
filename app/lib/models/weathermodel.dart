import 'package:flutter/material.dart';
class weathermodel {
  final String city;
  final String last_update;
  final String avg_temp;
  final String condition;
  final String mx_temp;
  final String mn_temp;
  const weathermodel(
      {required this.city,
      required this.last_update,
      required this.avg_temp,
      required this.condition,
      required this.mn_temp,
      required this.mx_temp});
      factory weathermodel.fromjson(json){
            return weathermodel(
              city: json['location"']['name'],
              last_update: json['current']['last_updated'],
              avg_temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
              condition: json['forecast']['forecastday'][0]['condition']['text'],
              mn_temp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
              mx_temp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
              );
              
      }
}

//important notes : 
//Api Key : d9c25a6552f64bb4bcc183308240708
//web     : https://www.weatherapi.com/api-explorer.aspx#forecast
//Request : http://api.weatherapi.com/v1/forecast.json?key=d9c25a6552f64bb4bcc183308240708&q=Cairo&days=1&aqi=no&alerts=no

