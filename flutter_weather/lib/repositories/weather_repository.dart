import 'dart:async';
// import 'package:meta/meta.dart';
import 'package:flutter_weather/repositories/weather_api_client.dart';
import 'package:flutter_weather/models/models.dart';

class WeatherRepository {
  final WeatherApiClient weatherApiClent;

  WeatherRepository({required this.weatherApiClent});

  Future<Weather> getWeather(String city) async {
    final int locationId = await weatherApiClent.getLocationId(city);
    return weatherApiClent.fetchWeather(locationId);
  }
}
