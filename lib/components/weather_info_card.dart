import 'package:flutter/material.dart';
import 'package:wiindy/models/current_weather.dart';
import 'package:wiindy/extensions/date_time_extension.dart';
import 'package:wiindy/services/pallete.dart';

class WeatherInfoCard extends StatelessWidget {
  final CurrentWeather currentWeather;

  const WeatherInfoCard({
    Key? key,
    required this.currentWeather,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Pallete.primary,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.location_on,
                color: Pallete.white,
              ),
              Expanded(
                child: Text(
                  currentWeather.cityName ?? "",
                  style: TextStyle(fontSize: 14, color: Pallete.white),
                ),
              ),
              Text(
                DateTime.now().toDateFormat(),
                style: TextStyle(
                  fontSize: 16,
                  color: Pallete.white,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Image.asset(
                '${currentWeather.weather?.weatherIcon}',
                height: 82,
                width: 82,
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${currentWeather.temp ?? ""}° C',
                      style: TextStyle(
                        fontSize: 22,
                        color: Pallete.white,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      currentWeather.weather?.description ?? "",
                      style: TextStyle(
                        fontSize: 22,
                        color: Pallete.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'lib/assets/weather/wind.png',
                        height: 24,
                        width: 24,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        '${currentWeather.windSpd?.round() ?? ""} m/s',
                        style: TextStyle(
                          fontSize: 16,
                          color: Pallete.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'lib/assets/weather/humidity.png',
                        height: 24,
                        width: 24,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        '${currentWeather.rh ?? ""}%',
                        style: TextStyle(
                          fontSize: 16,
                          color: Pallete.white,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            "Last updated at ${currentWeather.obTime.toTimeFormat()}",
            style: TextStyle(
              fontSize: 14,
              color: Pallete.white,
            ),
          ),
        ],
      ),
    );
  }
}
