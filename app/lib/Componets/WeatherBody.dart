import 'package:app/models/weathermodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/get_weather_cubit/getweathercubit.dart';

class WeatherBody extends StatelessWidget {
 const WeatherBody({super.key});
 
  @override
  Widget build(BuildContext context) {
        final weathermodel model = BlocProvider.of<GetWeathercubit>(context).w!;
    return  Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            model.city,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          
          Text(
            'updated at ${model.last_update}',
            style: TextStyle(fontSize: 23),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image(image: AssetImage('assets/cloudy.png')),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  '${model.avg_temp}',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                children: [
                  Text(
                    'Max temp : ${model.mn_temp}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    'Max temp : ${model.mx_temp}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ],
                
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Text( model.condition , 
           style: const TextStyle(
            fontSize: 30 , 
            fontWeight: FontWeight.bold
           ),
          )
        ],
      ),
    );
  }
}
