import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weatherapp/models/weather_model.dart';
import 'package:weatherapp/screens/home_screen.dart';
import 'package:weatherapp/screens/search_screen.dart';

          //WeatherInfoBody()
 //  مكان ظهور التغيير التاني  و عرض الداتا ع علي الشاشه
 

class WeatherInfoBody extends StatelessWidget {
  


      // rev  is DONE
 
  
  const WeatherInfoBody();
 
  @override
  Widget build(BuildContext context) {


    //WeatherInfoBody()
 //  مكان ظهور التغيير التاني  و عرض الداتا ع علي الشاشه
 

                  // take the same obj from Cuibt to show data
      
                // take an object from the same Cubit
                //  var wm = BlocProvider.of<GetWeatherCubit>(context).wm;  مهم جدا 
      WeatherModel wm = BlocProvider.of<GetWeatherCubit>(context).wm!;
                              // annotaion<>(con)
       

    return Scaffold( 
      backgroundColor: Color(0xff39A1EE),
      appBar: AppBar(
      //   leading: IconButton(
      //     icon: Icon(Icons.arrow_back),
      //     onPressed: () {
      //       Navigator.push(
      //           context,
      //           MaterialPageRoute(

                  
      // builder: (context) =>  SearchScreen()));
      //     },
      //   ),
        
        title: const Text('Weather info',
        style:TextStyle(
          fontSize: 30,
            fontWeight: FontWeight.bold
        )),
      ),

                              //51. Change background color




      body: Center(
        child: Container(
          
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                  getThemeColor(wm.WeatherCondition), // 500 
                        getThemeColor(wm.WeatherCondition) [50]!,
                               getThemeColor(wm.WeatherCondition)[300]!,
                 getThemeColor(wm.WeatherCondition)[200]!,
              ],
            )

          ),

          
          child: Padding(
            padding: const EdgeInsets.symmetric( horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
               children: [
                SizedBox(
                  height: 80,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                  
                  
                    Text(
            
                      wm.cityName,
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                   
                   
                   
                   
                   
                                             //  date ****
            
            
            
            
                                             
                                              //    year month day hour minute second
            
            
                            //'Updated at ${stringToDateTime(weatherModel.date)}'
                            //'Updated at ${stringToDateTime(weatherModel.date).hour}:${stringToDateTime(weatherModel.date).minute}'
                            //
                   
            
            
                   
                    ),
                    Text(
             'Updated at ${stringToDateTime(wm.date).hour}:${stringToDateTime(wm.date).minute}',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
               
               
                SizedBox(height: 60 ), // Add some space between the column and the row
               
            
            
               Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,  // بينهم مسافات متساوية   
                                // spaceEvevnly --> make equal spaces bet Widgets in a Row
            
              children: [
               
                  // Align the row in the center horizontally
               
            
                     // img  *******
                     // 
                     // 
                     // 
                     // **
            
                    Container(  // image inside Container ****
                      width: 50,
                      height: 50,
                      child: wm.image.contains('https:')
                                  ? Image.network('${wm.image!}')
                                      : Image.network('https:${wm.image!}'),
                       
                    ),
            
                
                    
                  
            
                  Text(
                      '${wm.temp.round()}',
                      style: TextStyle(
                        fontSize: 32,
                     fontWeight: FontWeight.bold,
                      ),
                    ),
                  
                 
            
            
                          //   cairo
                    Column( 
                      children:[ 
             Text(                                          // round() --> near int
                    'max temp: ${wm.maxTemp.round()}',
                      style: TextStyle(
                        fontSize: 25,
                      fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'min temp: ${wm.minTemp.round()}',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                      ]
                    ),
                    
                    
            
            
            
                  ],
                ),
            
               SizedBox(height: 60 ),
            
            
            
            
                // current
                     Text
                     (
                      ' ${wm.WeatherCondition}',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
            
            
            
            
            /////////////////////////////////
            /////////////////////////////
            ///
            ///
            SizedBox(
              height:50,
            ),
            
            
                ElevatedButton(
                  onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return SearchScreen();
            
                  }));
            
                },
                
                 child: Text('Search another City ' ,
                style:  TextStyle(
                 fontSize:25,
                 )),
                 
                 ),
            
            
            
            
            
            
                //  Text
                //      (
                //       ' الحمدلله رب العالمين ',
                //       style: TextStyle(
                //         fontSize: 50,
                //         fontWeight: FontWeight.bold,
                //       ),
                //     ),
            
            
            
            
            
            
            
                  ],
                ),
          ),
        ),
        
        ),
   
    );
  }
}




DateTime stringToDateTime(String value) {
  return DateTime.parse(value);
}