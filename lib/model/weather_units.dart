import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_units.freezed.dart';
part 'weather_units.g.dart';

@freezed
abstract class WeatherUnits with _$WeatherUnits {
  const factory WeatherUnits({
    required String time,
    required String interval,
    required String temperature,
    required String windspeed,
    required String winddirection,
    @JsonKey(name:"is_day") required String isDay,
    required String weathercode,
  }) = _WeatherUnits;

  factory WeatherUnits.fromJson(Map<String, dynamic> json) => _$WeatherUnitsFromJson(json);
}
