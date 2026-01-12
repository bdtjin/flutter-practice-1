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