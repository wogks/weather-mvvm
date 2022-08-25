class WeatherDto {
  Coord? coord;
  List<Weather>? weather;
  String? base;
  Main? main;
  num? visibility;
  Wind? wind;
  Clouds? clouds;
  num? dt;
  Sys? sys;
  num? timezone;
  num? id;
  String? name;
  num? cod;

  WeatherDto({
    this.coord,
    this.weather,
    this.base,
    this.main,
    this.visibility,
    this.wind,
    this.clouds,
    this.dt,
    this.sys,
    this.timezone,
    this.id,
    this.name,
    this.cod,
  });

  WeatherDto.fromJson(Map<String, dynamic> json) {
    coord = (json['coord'] as Map<String,dynamic>?) != null ? Coord.fromJson(json['coord'] as Map<String,dynamic>) : null;
    weather = (json['weather'] as List?)?.map((dynamic e) => Weather.fromJson(e as Map<String,dynamic>)).toList();
    base = json['base'] as String?;
    main = (json['main'] as Map<String,dynamic>?) != null ? Main.fromJson(json['main'] as Map<String,dynamic>) : null;
    visibility = json['visibility'] as num?;
    wind = (json['wind'] as Map<String,dynamic>?) != null ? Wind.fromJson(json['wind'] as Map<String,dynamic>) : null;
    clouds = (json['clouds'] as Map<String,dynamic>?) != null ? Clouds.fromJson(json['clouds'] as Map<String,dynamic>) : null;
    dt = json['dt'] as num?;
    sys = (json['sys'] as Map<String,dynamic>?) != null ? Sys.fromJson(json['sys'] as Map<String,dynamic>) : null;
    timezone = json['timezone'] as num?;
    id = json['id'] as num?;
    name = json['name'] as String?;
    cod = json['cod'] as num?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['coord'] = coord?.toJson();
    json['weather'] = weather?.map((e) => e.toJson()).toList();
    json['base'] = base;
    json['main'] = main?.toJson();
    json['visibility'] = visibility;
    json['wind'] = wind?.toJson();
    json['clouds'] = clouds?.toJson();
    json['dt'] = dt;
    json['sys'] = sys?.toJson();
    json['timezone'] = timezone;
    json['id'] = id;
    json['name'] = name;
    json['cod'] = cod;
    return json;
  }
}

class Coord {
  double? lon;
  double? lat;

  Coord({
    this.lon,
    this.lat,
  });

  Coord.fromJson(Map<String, dynamic> json) {
    lon = json['lon'] as double?;
    lat = json['lat'] as double?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['lon'] = lon;
    json['lat'] = lat;
    return json;
  }
}

class Weather {
  num? id;
  String? main;
  String? description;
  String? icon;

  Weather({
    this.id,
    this.main,
    this.description,
    this.icon,
  });

  Weather.fromJson(Map<String, dynamic> json) {
    id = json['id'] as num?;
    main = json['main'] as String?;
    description = json['description'] as String?;
    icon = json['icon'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['main'] = main;
    json['description'] = description;
    json['icon'] = icon;
    return json;
  }
}

class Main {
  double? temp;
  double? feelsLike;
  double? tempMin;
  double? tempMax;
  num? pressure;
  num? humidity;

  Main({
    this.temp,
    this.feelsLike,
    this.tempMin,
    this.tempMax,
    this.pressure,
    this.humidity,
  });

  Main.fromJson(Map<String, dynamic> json) {
    temp = json['temp'] as double?;
    feelsLike = json['feels_like'] as double?;
    tempMin = json['temp_min'] as double?;
    tempMax = json['temp_max'] as double?;
    pressure = json['pressure'] as num?;
    humidity = json['humidity'] as num?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['temp'] = temp;
    json['feels_like'] = feelsLike;
    json['temp_min'] = tempMin;
    json['temp_max'] = tempMax;
    json['pressure'] = pressure;
    json['humidity'] = humidity;
    return json;
  }
}

class Wind {
  double? speed;
  num? deg;

  Wind({
    this.speed,
    this.deg,
  });

  Wind.fromJson(Map<String, dynamic> json) {
    speed = json['speed'] as double?;
    deg = json['deg'] as num?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['speed'] = speed;
    json['deg'] = deg;
    return json;
  }
}

class Clouds {
  num? all;

  Clouds({
    this.all,
  });

  Clouds.fromJson(Map<String, dynamic> json) {
    all = json['all'] as num?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['all'] = all;
    return json;
  }
}

class Sys {
  num? type;
  num? id;
  String? country;
  num? sunrise;
  num? sunset;

  Sys({
    this.type,
    this.id,
    this.country,
    this.sunrise,
    this.sunset,
  });

  Sys.fromJson(Map<String, dynamic> json) {
    type = json['type'] as num?;
    id = json['id'] as num?;
    country = json['country'] as String?;
    sunrise = json['sunrise'] as num?;
    sunset = json['sunset'] as num?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['type'] = type;
    json['id'] = id;
    json['country'] = country;
    json['sunrise'] = sunrise;
    json['sunset'] = sunset;
    return json;
  }
}