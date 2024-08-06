import 'package:flutter/material.dart';

class WeatherBody extends StatelessWidget {
  const WeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Alexandrea',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          
          Text(
            'updated at 23:46',
            style: TextStyle(fontSize: 23),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image(image: AssetImage('assets/cloudy.png')),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  '17',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                children: [
                  Text(
                    'Max temp : 24 ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    'Max temp : 35 ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ],
                
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text('Light rain' , 
           style: TextStyle(
            fontSize: 30 , 
            fontWeight: FontWeight.bold
           ),
          )
        ],
      ),
    );
  }
}
