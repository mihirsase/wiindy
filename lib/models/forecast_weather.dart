import 'package:wiindy/extensions/string_extension.dart';
import 'package:wiindy/models/weather.dart';

class ForecastWeather {
  String? cityName;
  double? temp;
  DateTime? validDate;
  Weather? weather;

  ForecastWeather({
    this.cityName,
    this.temp,
    this.validDate,
    this.weather,
  });

  static ForecastWeather fromJson(final Map<String, dynamic> json) {
    return ForecastWeather(
      cityName: json['city_name'],
      temp: double.parse(json['temp'].toString()),
      validDate: (json["valid_date"] as String?).toDateTime(),
      weather: Weather.fromJson(json['weather']),
    );
  }

  static List<ForecastWeather> listFromJson(final List<dynamic>? jsons) {
    if (jsons == null) {
      return <ForecastWeather>[];
    } else {
      return jsons.map<ForecastWeather>((final dynamic json) {
        return ForecastWeather.fromJson(json);
      }).toList();
    }
  }
}
