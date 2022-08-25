
import 'package:weather_mvvm/data/data_source/weather_dto.dart';

abstract class WeatherApi {
  Future<WeatherDto> getWeatherInfo(String query);
}