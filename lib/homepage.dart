import 'package:flutter/material.dart';
import 'package:weather_forecast/api.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [_buildSearchWidget()],
          )
        )
    ));
  }


  Widget _buildSearchWidget() {
    return SearchBar(
      hintText: "Search any Location",
      onSubmitted: (value) {
        _getWeatherData(value);
      }
    );
  }

  _getWeatherData(String location) async{
    await WeatherApi().getCurrentWeather(location);
  }
 }