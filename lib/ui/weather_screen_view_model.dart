import 'package:flutter/material.dart';
import 'package:weather_mvvm/data/data_source/api_imple.dart';
import 'package:weather_mvvm/data/model/weather.dart';
import 'package:weather_mvvm/data/repository/weather_repository.dart';

class WeatherViewModel extends ChangeNotifier {
  final _weatherRepository = WeatherRepository(WeatherApiImpl());
  Weather myWeather = Weather(weathe: '', cityName: '', icon: '', temp: 0);
  bool isLoading = true;

  WeatherViewModel() {
    fetchWeatherInfo('seoul');
  }
  
  void fetchWeatherInfo(String query) async {
    isLoading = true;
    notifyListeners();

    myWeather = await _weatherRepository.getWeatherInfo(query);
    notifyListeners();

    isLoading = false;
  }
}

//뷰모델이 레퍼지토리를 보고 레퍼지토리가 에이피아이를 보고