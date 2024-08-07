import 'package:app/Views/HomePage.dart';
import 'package:app/services/weatherservices.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
  //weatherService(Dio()).getHttp();
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  HomePage(),
    );

  }
}