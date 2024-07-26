import 'package:weather_forecast/constants.dart';
import 'package:http/http.dart' as http;
class WeatherApi{
  final String baseUrl = " http://api.weatherapi.com/v1/current.json";



  getCurrentWeather(String location) async {
    String apiUrl = "$baseUrl?key=$apiKey&q=$location";
    try{
      final response = await http.get(Uri.parse(apiUrl));
      if(response.statusCode==200){
        print(response.body);
       } else {
        throw Exception("Failed to load weather");
       }
      } catch(e) {
        throw Exception("failer to load weather");
      }
    }
}
