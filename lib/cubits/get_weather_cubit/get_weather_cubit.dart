
  import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weatherapp/models/weather_model.dart';
import 'package:weatherapp/services/weather_service.dart';
                                            
 
   
                                  // <Parent State>          
    class GetWeatherCubit extends Cubit<WeatherState>{
  GetWeatherCubit(   ): super(WeatherInitialState());          // initialState () == NoWeatherState ()
  
   WeatherModel ?  wm ;           // note that late keyword
                                    // define a attribute Of WeatherModel class to store data in it


    getRealtWeather({required String cityName}) async{
    
         try {
        wm =  await WeatherService(Dio()).getCurrentWeather(cityName: cityName); // store data in cubit  to use it
          emit(WeatherLoadedState());                 
          // emit ==  ابعت send يعني 
          // emit(WeatherLoadedState(wm));                  // // store data in state to use it
  
    } on Exception catch (e) {
      emit(WeatherFailureState());
      
                   
                   
                   } 


        }
 







  }



/*
  //   6 cubit pattern steps
                        // create  States
                        // create  cubit
                       // create function 
                        // provide cubit
                       // integrate cubit
                       // trigger cubit


*/




