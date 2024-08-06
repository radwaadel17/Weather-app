import 'package:flutter/material.dart';

import '../Componets/NoWeatherBody.dart';
import '../Componets/WeatherBody.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather app',
        style: TextStyle(
          fontSize: 24,
        ),
        ),
      ),
      body: const WeatherBody()

    );
  }
}

