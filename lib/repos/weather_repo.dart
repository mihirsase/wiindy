import 'package:wiindy/models/api_response.dart';
import 'package:wiindy/models/current_weather.dart';
import 'package:wiindy/models/forecast_weather.dart';
import 'package:wiindy/services/api_service.dart';

class WeatherRepo {
  late ApiService apiService;

  WeatherRepo({ApiService? apiService}) {
    this.apiService = apiService ?? ApiService.instance;
  }

  Future<CurrentWeather> getCurrentWeather() async {
    ApiResponse response = await apiService.apiCall(
      route: 'current?key=9b3bf0fb00af4d2fad81c842ec6e90ea&city=London',
      requestMethod: RequestMethod.get,
    );
    if (response.isSuccess) {
      return CurrentWeather.fromJson(response.data?['data'][0]);
    } else {
      throw ApiFailedException(response);
    }
  }

  Future<List<ForecastWeather>> getForecastWeather() async {
    ApiResponse response = await apiService.apiCall(
      route: 'forecast/daily?key=9b3bf0fb00af4d2fad81c842ec6e90ea&days=7&city=London',
      requestMethod: RequestMethod.get,
    );
    if (response.isSuccess) {
      return ForecastWeather.listFromJson(response.data?['data']);
    } else {
      throw ApiFailedException(response);
    }
  }
}
