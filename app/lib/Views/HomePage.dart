import 'package:app/Views/SearchPage.dart';
import 'package:flutter/material.dart';

import '../Componets/NoWeatherBody.dart';
import '../Componets/WeatherBody.dart';

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
        body: const WeatherBody());
  }
} 
//Api Key : d9c25a6552f64bb4bcc183308240708
//Request : http://api.weatherapi.com/v1/forecast.json?key=d9c25a6552f64bb4bcc183308240708&q=Cairo&days=1&aqi=no&alerts=no
