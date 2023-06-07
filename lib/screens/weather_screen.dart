import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wiindy/controller/weather_controller.dart';
import 'package:wiindy/extensions/date_time_extension.dart';
import 'package:wiindy/models/forecast_weather.dart';
import 'package:wiindy/services/notifier.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  final WeatherController _weatherController = WeatherController();
  String? city;

  @override
  void initState() {
    _weatherController.loadWeatherData(city: "London");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(
          () {
            if (_weatherController.isLoading.value) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 12,
                    ),
                    _searchBar,
                    const SizedBox(
                      height: 22,
                    ),
                    _weatherInfoCard,
                    const SizedBox(
                      height: 22,
                    ),
                    _weatherForecast,
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }

  Widget get _searchBar {
    return Row(
      children: [
        Expanded(
          child: Card(
            elevation: 1,
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search for cities",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
                textCapitalization: TextCapitalization.sentences,
                onChanged: (String? val) {
                  city = val;
                },
                cursorWidth: 1,
                cursorColor: Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            if (city != null && city!.isNotEmpty) {
              _weatherController.loadWeatherData(city: city!);
            } else {
              Notifier.instance.notify(notifType: NotifType.error, message: "Enter a search query");
            }
          },
          child: Card(
            elevation: 1,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text(
                  "Go",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget get _weatherInfoCard {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFF457FFA),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.location_on,
                color: Colors.white,
              ),
              Expanded(
                child: Text(
                  _weatherController.currentWeather.cityName ?? "",
                  style: const TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
              Text(
                DateTime.now().toDateFormat(),
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
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
                '${_weatherController.currentWeather.weather?.weatherIcon}',
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
                      '${_weatherController.currentWeather.temp ?? ""}° C',
                      style: const TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      _weatherController.currentWeather.weather?.description ?? "",
                      style: const TextStyle(
                        fontSize: 22,
                        color: Colors.white,
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
                        '${_weatherController.currentWeather.windSpd?.round() ?? ""} m/s',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
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
                        '${_weatherController.currentWeather.rh ?? ""}%',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
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
            "Last updated at ${_weatherController.currentWeather.obTime.toTimeFormat()}",
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget get _weatherForecast {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "7-day forecast",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 8,
        ),
        ..._weatherController.forecastWeather.map((final ForecastWeather forecastWeather) {
          return _weatherForecastCard(forecastWeather);
        }).toList(),
      ],
    );
  }

  Widget _weatherForecastCard(final ForecastWeather forecastWeather) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration:
          BoxDecoration(color: const Color(0xFFD2DFFF), borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          Container(
            height: 46,
            width: 46,
            decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xFF9AB6FF)),
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
