import 'package:flutter/material.dart';
import 'package:weatherapp/screens/search_screen.dart';
import 'package:weatherapp/screens/weather_info_body.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text(
           'Weather App',
          style: TextStyle(
            color: Colors.black,
            fontSize: 35,
          ),  
        ),  
       
        actions: [       // actions --> do anything in appBar   // List of Widget []
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(

                  
      builder: (context) =>  SearchScreen()), //  SearchScreen()
       
       // builder: (context) => const WeatherInfoBody()), //WeatherInfoBody() 


              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),


      body: 
       const Center(
        child: Padding(
          padding: EdgeInsets.all(26.0),
          child: Text(
            'There is No Weather🧐. Start Searching Now 🔎.',
            style: TextStyle(
              fontSize: 32,
            ),
          ),
        ),
      ),
    );
  }
}
