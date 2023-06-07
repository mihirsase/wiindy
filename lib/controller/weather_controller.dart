import 'package:get/get.dart';
import 'package:wiindy/models/current_weather.dart';
import 'package:wiindy/repos/weather_repo.dart';
import 'package:wiindy/services/api_service.dart';
import 'package:wiindy/services/notifier.dart';

class WeatherController extends GetxController {
  late WeatherRepo weatherRepo;
  var isLoading = false.obs;
  late CurrentWeather currentWeather;

  WeatherController({
    WeatherRepo? weatherRepo,
  }) {
    this.weatherRepo = weatherRepo ?? WeatherRepo();
  }

  Future<void> loadWeatherData() async {
    try {
      isLoading.value = true;
      currentWeather = await weatherRepo.getCurrentWeather();
      isLoading.value = false;
    } catch (e) {
      Notifier.instance.notify(
        message: e is ApiFailedException ? e.response?.errorMessage : null,
        notifType: NotifType.error,
      );
    }
  }
}
