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

