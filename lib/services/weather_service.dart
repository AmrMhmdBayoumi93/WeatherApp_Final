

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weatherapp/models/weather_model.dart';


class WeatherService {
  
  final Dio dio;
 // WeatherModel? weatherModel; 
  WeatherService(this.dio);
  // return  type of WeatherModel in Future
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
   
    try {

            // baseUrl or domain
 
       String baseUrl='https://api.weatherapi.com/v1';
      final String apiKey ='fd179a385f81436ea90174637241107';
      // fd179a385f81436ea90174637241107
        // forecast.json -->method or api or endpoint name

      Response response = await dio.get(
        '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1',
     
      );
                
                // build an obj by namedConstructor using data that comes from API
                             //dynamic json =response.data ;


                             log(response.data.toString());

    WeatherModel   weatherModel = WeatherModel.fromJson(response.data);
            return weatherModel;

          
          
    }   on DioException catch (e) {
            final String errorMessage =e.response?.data['error']['message']?? 'Oops, there was an error, try again later.';
              throw Exception(errorMessage);
     
     
     
      // // Handle error, e.g., log it or throw custom exception
      // throw Exception('Failed to fetch weather data: $error');
    
      } catch (e){
        log(e.toString());  // for me as a dev
        throw Exception( 'Oops, there was an error, try again later.');

    }
 
 
  }
  

}





