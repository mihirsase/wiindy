import 'package:wiindy/models/api_response.dart';
import 'package:wiindy/models/current_weather.dart';
import 'package:wiindy/models/forecast_weather.dart';
import 'package:wiindy/services/api_service.dart';

class WeatherRepo {
  late ApiService apiService;

  WeatherRepo({ApiService? apiService}) {
    this.apiService = apiService ?? ApiService.instance;
  }

  Future<CurrentWeather> getCurrentWeather({required String city}) async {
    ApiResponse response = await apiService.apiCall(
      route: 'current?key=9b3bf0fb00af4d2fad81c842ec6e90ea&city=$city',
      requestMethod: RequestMethod.get,
    );
    if (response.isSuccess) {
      return CurrentWeather.fromJson(response.data?['data'][0]);
    } else {
      throw ApiFailedException(response);
    }
  }

  Future<List<ForecastWeather>> getForecastWeather({required String city}) async {
    ApiResponse response = await apiService.apiCall(
      route: 'forecast/daily?key=9b3bf0fb00af4d2fad81c842ec6e90ea&days=7&city=$city',
      requestMethod: RequestMethod.get,
    );
    if (response.isSuccess) {
      return ForecastWeather.listFromJson(response.data?['data']);
    } else {
      throw ApiFailedException(response);
    }
  }

  Future<CurrentWeather> getCurrentWeatherFromLatLng({
    required double lat,
    required double lng,
  }) async {
    ApiResponse response = await apiService.apiCall(
      route: 'current?key=9b3bf0fb00af4d2fad81c842ec6e90ea&lat=$lat&lon=$lng',
      requestMethod: RequestMethod.get,
    );
    if (response.isSuccess) {
      return CurrentWeather.fromJson(response.data?['data'][0]);
    } else {
      throw ApiFailedException(response);
    }
  }

  Future<List<ForecastWeather>> getForecastWeatherFromLatLng({
    required double lat,
    required double lng,
  }) async {
    ApiResponse response = await apiService.apiCall(
      route: 'forecast/daily?key=9b3bf0fb00af4d2fad81c842ec6e90ea&days=7&lat=$lat&lon=$lng',
      requestMethod: RequestMethod.get,
    );
    if (response.isSuccess) {
      return ForecastWeather.listFromJson(response.data?['data']);
    } else {
      throw ApiFailedException(response);
    }
  }
}
