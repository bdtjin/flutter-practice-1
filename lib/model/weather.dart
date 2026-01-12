import 'package:flutter_practice_1/model/current_weather.dart';
import 'package:flutter_practice_1/model/weather_units.dart';

/// Open-Meteo API로부터 받아온 전체 날씨 데이터를 관리하는 클래스입니다.
class Weather {
  /// 위치의 위도 (Latitude)
  final double latitude;

  /// 위치의 경도 (Longitude)
  final double longitude;

  /// 해발 고도 (Elevation)
  final double elevation;

  /// API 요청 처리 시간 (milliseconds)
  final double generationTimeMs;

  /// 각 날씨 데이터의 측정 단위를 담고 있는 객체
  final WeatherUnits units;

  /// 현재 날씨의 실시간 수치를 담고 있는 객체
  final CurrentWeather currentWeather;

  Weather({
    required this.latitude,
    required this.longitude,
    required this.elevation,
    required this.generationTimeMs,
    required this.units,
    required this.currentWeather,
  });

  /// JSON 데이터를 Weather 객체로 변환하는 네임드 생성자입니다.
  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      elevation: (json['elevation'] as num).toDouble(),
      generationTimeMs: (json['generationtime_ms'] as num).toDouble(),
      units: WeatherUnits.fromJson(json['current_weather_units']),
      currentWeather: CurrentWeather.fromJson(json['current_weather']),
    );
  }
}

