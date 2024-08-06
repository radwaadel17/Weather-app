import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,  //The widget will only take up as much space as its children need
        children: [
          Text(
              'there is no weather 😔 start',
              style: TextStyle(
                fontSize: 30,
              ),
          ),
          Text('searching now 🔍',
              style: TextStyle(
                fontSize: 30,
                ),
          ),
        ],
      ),
    );
  }
}