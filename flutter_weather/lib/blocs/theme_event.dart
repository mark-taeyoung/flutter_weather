import 'package:equatable/equatable.dart';
import 'package:flutter_weather/models/models.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();
}

class WeatherChanged extends ThemeEvent {
  final WeatherCondition condition;

  const WeatherChanged({required this.condition});
  @override
  List<Object> get props => [condition];
}
