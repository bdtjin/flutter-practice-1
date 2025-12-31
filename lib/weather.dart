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

/// 날씨 데이터들의 단위를 정의하는 클래스입니다. (예: °C, km/h 등)
class WeatherUnits {
  /// 시간 형식 (예: iso8601)
  final String time;

  /// 측정 간격 단위 (예: seconds)
  final String interval;

  /// 온도 단위 (예: °C)
  final String temperature;

  /// 풍속 단위 (예: km/h)
  final String windSpeed;

  /// 풍향 단위 (예: °)
  final String windDirection;

  /// 낮/밤 구분 단위
  final String isDay;

  /// 날씨 코드 명칭 (예: wmo code)
  final String weatherCode;

  WeatherUnits({
    required this.time,
    required this.interval,
    required this.temperature,
    required this.windSpeed,
    required this.windDirection,
    required this.isDay,
    required this.weatherCode,
  });

  factory WeatherUnits.fromJson(Map<String, dynamic> json) {
    return WeatherUnits(
      time: json['time'],
      interval: json['interval'],
      temperature: json['temperature'],
      windSpeed: json['windspeed'],
      windDirection: json['winddirection'],
      isDay: json['is_day'],
      weatherCode: json['weathercode'],
    );
  }
}

/// 실시간 날씨 수치를 정의하는 클래스입니다.
class CurrentWeather {
  /// 데이터 측정 시간
  final String time;

  /// 측정 간격 (초)
  final int interval;

  /// 현재 온도
  final double temperature;

  /// 현재 풍속
  final double windSpeed;

  /// 풍향 (도)
  final int windDirection;

  /// 낮 여부 (1: 낮, 0: 밤)
  final int isDay;

  /// 날씨 상태 코드
  final int weatherCode;

  CurrentWeather({
    required this.time,
    required this.interval,
    required this.temperature,
    required this.windSpeed,
    required this.windDirection,
    required this.isDay,
    required this.weatherCode,
  });

  factory CurrentWeather.fromJson(Map<String, dynamic> json) {
    return CurrentWeather(
      time: json['time'],
      interval: json['interval'],
      temperature: (json['temperature'] as num).toDouble(),
      windSpeed: (json['windspeed'] as num).toDouble(),
      windDirection: json['winddirection'],
      isDay: json['is_day'],
      weatherCode: json['weathercode'],
    );
  }
}