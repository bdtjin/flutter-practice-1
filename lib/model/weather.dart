import 'package:freezed_annotation/freezed_annotation.dart';
import 'weather_units.dart';
import 'current_weather.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
abstract class Weather with _$Weather {
  const factory Weather({
    required double latitude,
    required double longitude,
    // JSON의 'generationtime_ms'를 'generationtimeMs'로 매핑
    @JsonKey(name: 'generationtime_ms') required double generationtimeMs,
    // JSON의 'utc_offset_seconds'를 'utcOffsetSeconds'로 매핑
    @JsonKey(name: 'utc_offset_seconds') required int utcOffsetSeconds,
    required String timezone,
    // JSON의 'timezone_abbreviation'을 'timezoneAbbreviation'로 매핑
    @JsonKey(name: 'timezone_abbreviation') required String timezoneAbbreviation,
    required double elevation,
    // JSON의 'current_weather_units'를 'currentWeatherUnits'로 매핑
    @JsonKey(name: 'current_weather_units') required WeatherUnits currentWeatherUnits,
    // JSON의 'current_weather'를 'currentWeather'로 매핑
    @JsonKey(name: 'current_weather') required CurrentWeather currentWeather,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);
}