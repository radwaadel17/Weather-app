import 'package:flutter/material.dart';

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
            onSubmitted: (Value){
              
            },
            decoration: InputDecoration(
            
              contentPadding:EdgeInsets.symmetric(vertical: 30 , horizontal: 16) ,
              labelText: 'Search',
              border:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              hintText: 'Enter city name',
              suffixIcon:IconButton(onPressed: (){
              }, icon: Icon(Icons.search)) ,
            ),
          ),
        ),
      ),
    );
  }
}
