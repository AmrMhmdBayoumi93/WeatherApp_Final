

import 'package:weatherapp/models/weather_model.dart';

class WeatherState{}         // Parent State

 
 
class WeatherInitialState extends WeatherState{}          // WeatherInitialState == NoWeatherState
 
class WeatherLoadedState extends WeatherState{
  
  //final   WeatherModel weatherModel ;            // last when we was using state to store data on it to show it in UI
 // WeatherLoadedState(this.weatherModel);

} 


class WeatherFailureState extends WeatherState{}


 
  




/*
  //  6 cubit pattern steps
                           // create  States
                        // create  cubit
                       // create function 
                        // provide cubit
                       // integrate cubit
                       // trigger cubit


*/
