import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';

part 'weather.g.dart';

@freezed
class weather with _$weather {
  const factory weather({
    required String weather,
       required String cityName,
       required String icon,
       required num temp
  }) = _weather;

  factory weather.fromJson(Map<String, Object?> json) => _$weatherFromJson(json);
}