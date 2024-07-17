
class WeatherModel { 
 
                              // here only
 final String cityName;   // not nullable -->required 
  final String date; 
  final String image;  // nullable -->not required
  final double temp;          //  temp == avgTemp note that value of temp from json in API is double
  final double maxTemp;
  final double minTemp; 
  final String WeatherCondition;
  
// WeatherModel.dumy({this.cityName = 'shebin', this.date ='21 april',this.image='image',this.temp=12,this.maxTemp=20,this.maxTemp=25,this.WeatherCondition ='cold'});

WeatherModel({required this.cityName,required this.date,required this.image,required this.temp,
required this.maxTemp,required this.minTemp, required this.WeatherCondition});

  // init obj using factory Con

    //factory DefCon.namedCon(json){ }
  factory WeatherModel.fromJson(json){
    
    return WeatherModel(
      cityName: json['location']['name'], 
      date: json['current']['last_updated'],
     image: json['forecast']['forecastday'][0]['day']['condition']['icon']  , 
      temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'] , 
      maxTemp:  json['forecast']['forecastday'][0]['day']['maxtemp_c'] ,
       minTemp:  json['forecast']['forecastday'][0]['day']['mintemp_c'] ,
        WeatherCondition:  json['forecast']['forecastday'][0]['day']['condition']['text'], 
        );

  

  }









}
