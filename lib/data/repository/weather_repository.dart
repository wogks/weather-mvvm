import 'package:weather_mvvm/data/data_source/api.dart';
import 'package:weather_mvvm/data/model/weather.dart';

class WeatherRepository {
  final WeatherApi _api;

  WeatherRepository(this._api);

  Future<Weather> getWeatherInfo(String query) async {
    final weatherDto = await _api.getWeatherInfo(query);

    final icon =
        'http://openweathermap.org/img/w/${weatherDto.weather?.elementAt(0).icon}';

    return Weather(
      weathe: weatherDto.weather?.elementAt(0).main ?? '',
      cityName: weatherDto.name ?? '',
      icon: icon,
      temp: weatherDto.main?.temp ?? 0,
    );
  }
}
