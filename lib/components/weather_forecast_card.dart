import 'package:flutter/material.dart';
import 'package:wiindy/models/forecast_weather.dart';
import 'package:wiindy/extensions/date_time_extension.dart';
import 'package:wiindy/services/pallete.dart';

class WeatherForecastCard extends StatelessWidget {
  final ForecastWeather forecastWeather;

  const WeatherForecastCard({
    Key? key,
    required this.forecastWeather,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Pallete.secondary,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            height: 46,
            width: 46,
            decoration: BoxDecoration(shape: BoxShape.circle, color: Pallete.accent),
            child: Center(
                child: Image.asset(
              '${forecastWeather.weather?.weatherIcon}',
              height: 26,
              width: 26,
            )),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  forecastWeather.validDate.toDay(),
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  forecastWeather.weather?.description ?? "",
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Text(
            '${forecastWeather.temp ?? ""}° C',
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
