import 'package:wiindy/extensions/string_extension.dart';
import 'package:wiindy/models/weather.dart';

class CurrentWeather {
  String? cityName;
  String? sunrise;
  String? sunset;
  DateTime? obTime;
  double? temp;
  Weather? weather;
  double? windSpd;

  CurrentWeather({
    this.cityName,
    this.sunrise,
    this.sunset,
    this.obTime,
    this.temp,
    this.weather,
    this.windSpd,
  });

  static CurrentWeather fromJson(final Map<String, dynamic> json) {
    return CurrentWeather(
      cityName: json['city_name'],
      sunrise: json['sunrise'],
      sunset: json["sunset"],
      obTime: (json["ob_time"] as String?).toDateTime(),
      temp: double.parse(json['temp'].toString()),
      weather: Weather.fromJson(json['weather']),
      windSpd: double.parse(json['wind_spd'].toString()),
    );
  }
}
