
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weatherapp/models/weather_model.dart';
import 'package:weatherapp/services/weather_service.dart';

class SearchScreen extends StatelessWidget {
                                                              //search screen
  

 
   SearchScreen({super.key});
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search a city'),

      ),
      
        
      body:  Center(               //remove const from here
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 12.0),

          child: TextField(   
                style: TextStyle(fontSize: 30),
                              // here in TextField we can trigger the method to get data
                           onSubmitted: (value)async{


        //  WeatherModel wm =  await WeatherService(Dio()).getCurrentWeather(cityName: value);
                              // this logic code is in Cubit Func
                              // and u must take an obj from Cubit to call the method which contains this logic code






          //  BlocProvider.of<GetWeatherCubit>(context).getWeather(cityName: value);
              // OR
                                            // مكان سبب التغيير -1
                                            // in serach Screen in TextField()
                                                          //  < GetWeatherCubit >
                                          // BlocProvider.of<GetWeatherCubit>(context);
                                         //  for create an obj from the same Cubit

 // and u must take an obj from Cubit to call the method which contains this logic code here see ....


                                                         //   annotation<>
        var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);     // and u must take an obj from Cubit 
                  getWeatherCubit.getRealtWeather(cityName: value);   // to call the method which contains this logic code

                    Navigator.pop(context);

                         //  log(weatherModel.cityName);   // for me for test
                         // log(weatherModel.date);      // for me for test


                          },

          






            //    enabled:true,   // as a def
          
          // onChanged
              // onChanged: (String value){
              //  // print(value);
              //   log(value);

              // }

         // onSubmitted 
              // onSubmitted :(String value){ 
                // log(value);

              // }



         //     onEditingComplete:(){ } ,
         //   onAppPrivateCommand:() {} ,
  




           decoration: InputDecoration(

              labelText: 'Search',
              labelStyle: TextStyle( 
                fontSize: 25,
              ),
             
              hintText: 'Enter City Name',
               hintStyle: TextStyle( 
                fontSize: 32
                  ,
              ),


              

              suffixIcon: Icon(
                            Icons.search,
                            size:40,
                      ),

            





           // padding for inner in TextField
          contentPadding: EdgeInsets.symmetric( 
            horizontal: 16,    // افقي 
            vertical: 32,     // راسي

          ),


             // default  border
              border: OutlineInputBorder(
                   
                 //    borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                              color: Colors.green,
                               width: 8.0
                  ,
                  ),

                 
              ),
    

                // types of borders
              //  border :, 
                // enabled border : 
                //focusedBorder: ,
                // errorBorder : ,



        // before click on textField

      // enabledBorder: UnderlineInputBorder(
      //           borderRadius: BorderRadius.circular(8),
      //           borderSide: const BorderSide(
      //             color: Colors.black,
      //           ),),
           






            // After Click on textField

              // focusedBorder  : UnderlineInputBorder(
              //   borderRadius: BorderRadius.circular(6),
              //   borderSide: const BorderSide(
              //     color: Colors.yellow
              //   ),
              // ),
           
           
           
           
           
           
           
           
            ),
          
          
          
          ),
        ),
      ),
    );
  
  
  }

           //global var
 
}

