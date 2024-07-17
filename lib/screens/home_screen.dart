import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weatherapp/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weatherapp/screens/no_weather_body.dart';
import 'package:weatherapp/screens/weather_info_body.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
          /// comments
        
  @override
  Widget build(BuildContext context) {
       


      // 2- مكان ظهور التغيير
 
      // in HomeScreen
    // BlocProvider()  widget for create an obj from Cubit
    // BlocBuilder()   widget  for  make ui listen to cubit by the states , build and control ui by states
                                     
                                       
         return  BlocProvider<GetWeatherCubit>(
          create: (context) => GetWeatherCubit(),

            
          child: Builder(
            builder: (context) {
              return BlocBuilder<GetWeatherCubit, WeatherState>(
                builder: (context, state) {
                  return MaterialApp( 
                                                          // 46 Materila Color
                               // theme: ThemeData.dark(),
                            
                                      theme :ThemeData( 
                            
                                        // brightness: Brightness.dark,
                                     primarySwatch: getThemeColor( BlocProvider.of<GetWeatherCubit>(context).wm?.WeatherCondition ),
                                        
                                          //getThemeColor( BlocProvider.of<GetWeatherCubit>(context).wm.WeatherCondition ),
                                      ),
                            
                                                
                            
                            
                            
                            
                            
                            
                            
                                    debugShowCheckedModeBanner: false,
                                    
                                    // global variable or obj         // no  no no
                                              //    home: wm == null ? const NoWeatherBody() : const WeatherInfoBody(),
                              
                                 // use STMG  is the best ]
                                 // home :screens of UI
                            
                            
                            
                                    //  take this note BlocConsumer( listener:   ) == BlocBuilder(builder:   ) 
                                    //
                                     
                            
                            
                                     // BlocBuilder(builder:   ) 
                            
                            
                                    home:  BlocBuilder< GetWeatherCubit, WeatherState>(
                                      builder: (context, state) {
                                      if (state is WeatherInitialState){
                                        return NoWeatherBody();  
              
              
                                      } else if (state is WeatherLoadedState){
                                        return WeatherInfoBody(
                                         
                                          );
                                      }
              
                                      
                                      else{
                                        return Center(child: 
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('oops, there was an error, try again later',
                                          style: TextStyle(
                                            fontSize: 27, 
                                            fontWeight: FontWeight.bold
                                                               
                                                              //  ),
                                           ),
                          ),
                        ),
                      );
                    }
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}

                // this is a method to get the theme color in the build method of the widget

        // 1- create a method 
          // 2- get the theme color from the method
          // 3- pass the theme color to the MaterialApp() widget
          // 4- use the theme color in the build method of the widget
          // 5- return the widget
          // 6- call the method in the build method of the widget
          // 7- use the theme color in the build method of the widget


          // or we can use it as a function instead of a method out of the build method

  

MaterialColor getThemeColor(String? condition) {
  if (condition == null) {
    return Colors.blue;
  }
  
  switch (condition) {
    case 'sunny':
    case 'clear':
      return Colors.yellow;
    case 'overcast':
      return Colors.grey;
    case 'mist':
      return Colors.blueGrey;
    case 'patchy rain possible':
    case 'light drizzle':
    case 'patchy light drizzle':
    case 'patchy light rain':
    case 'light rain':
    case 'moderate rain at times':
    case 'moderate rain':
    case 'heavy rain at times':
    case 'heavy rain':
    case 'light rain shower':
    case 'moderate or heavy rain shower':
    case 'torrential rain shower':
    case 'patchy light rain with thunder':
    case 'moderate or heavy rain with thunder':
      return Colors.lightBlue;
    case 'patchy snow possible':
    case 'light snow':
    case 'patchy light snow':
    case 'patchy moderate snow':
    case 'moderate snow':
    case 'patchy heavy snow':
    case 'heavy snow':
    case 'light snow showers':
    case 'moderate or heavy snow showers':
    case 'patchy light snow with thunder':
    case 'moderate or heavy snow with thunder':
      return Colors.blueGrey;
    case 'patchy sleet possible':
    case 'light sleet':
    case 'moderate or heavy sleet':
    case 'light sleet showers':
    case 'moderate or heavy sleet showers':
      return Colors.blueGrey;
    case 'patchy freezing drizzle possible':
    case 'freezing drizzle':
    case 'heavy freezing drizzle':
    case 'light freezing rain':
    case 'moderate or heavy freezing rain':
      return Colors.blueGrey;
    case 'thundery outbreaks possible':
      return Colors.purple;
    case 'blowing snow':
    case 'blizzard':
      return Colors.grey;
    case 'fog':
      return Colors.grey;
    case 'freezing fog':
      return Colors.grey;
    case 'ice pellets':
    case 'light showers of ice pellets':
    case 'moderate or heavy showers of ice pellets':
      return Colors.blueGrey;
    default:
      return Colors.grey; // Default color if condition is not found

  } }


