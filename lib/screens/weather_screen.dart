import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wiindy/components/weather_forecast_card.dart';
import 'package:wiindy/components/weather_info_card.dart';
import 'package:wiindy/controller/weather_controller.dart';
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
    _weatherController.loadCurrentLocationWeather();
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
                    WeatherInfoCard(currentWeather: _weatherController.currentWeather),
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
          return WeatherForecastCard(forecastWeather: forecastWeather);
        }).toList(),
      ],
    );
  }
}
