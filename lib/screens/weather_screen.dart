import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wiindy/controller/weather_controller.dart';
import 'package:wiindy/extensions/date_time_extension.dart';
import 'package:wiindy/models/forecast_weather.dart';
import 'package:wiindy/screens/search_screen.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  final WeatherController _weatherController = WeatherController();

  @override
  void initState() {
    _weatherController.loadWeatherData();
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
        const Icon(
          Icons.location_on,
          size: 24,
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Text(
            _weatherController.currentWeather.cityName ?? "",
            style: const TextStyle(fontSize: 14),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.to(() => const SearchScreen());
          },
          child: const Icon(
            Icons.search,
            size: 24,
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
              Expanded(
                child: Text(
                  DateTime.now().toDateFormat(),
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                DateTime.now().toTimeFormat(),
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
              Column(
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
