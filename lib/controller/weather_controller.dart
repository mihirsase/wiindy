import 'package:get/get.dart';
import 'package:location/location.dart';
import 'package:wiindy/models/current_weather.dart';
import 'package:wiindy/models/forecast_weather.dart';
import 'package:wiindy/repos/weather_repo.dart';
import 'package:wiindy/screens/error_screen.dart';
import 'package:wiindy/services/api_service.dart';
import 'package:wiindy/services/location_service.dart';
import 'package:wiindy/services/notifier.dart';

class WeatherController extends GetxController {
  late WeatherRepo weatherRepo;
  var isLoading = false.obs;
  late CurrentWeather currentWeather;
  late List<ForecastWeather> forecastWeather;

  WeatherController({
    WeatherRepo? weatherRepo,
  }) {
    this.weatherRepo = weatherRepo ?? WeatherRepo();
  }

  Future<void> loadWeatherData({required String city}) async {
    try {
      isLoading.value = true;
      currentWeather = await weatherRepo.getCurrentWeather(city: city);
      forecastWeather = await weatherRepo.getForecastWeather(city: city);
      isLoading.value = false;
    } catch (e) {
      Notifier.instance.notify(
        message: e is ApiFailedException ? e.response?.errorMessage : null,
        notifType: NotifType.error,
      );
      Get.off(() => const ErrorScreen());
    }
  }

  Future<void> loadCurrentLocationWeather() async {
    try {
      isLoading.value = true;
      LocationData? locationData = await LocationService.instance.getLocationData();
      currentWeather = await weatherRepo.getCurrentWeatherFromLatLng(
        lat: locationData!.latitude!,
        lng: locationData.longitude!,
      );
      forecastWeather = await weatherRepo.getForecastWeatherFromLatLng(
        lat: locationData.latitude!,
        lng: locationData.longitude!,
      );
      isLoading.value = false;
    } catch (e) {
      print(e);
      Notifier.instance.notify(
        message: e is ApiFailedException ? e.response?.errorMessage : null,
        notifType: NotifType.error,
      );
      Get.off(() => const ErrorScreen());
    }
  }
}
