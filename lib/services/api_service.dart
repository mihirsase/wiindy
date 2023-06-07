import 'package:get/get.dart';
import 'package:wiindy/models/api_response.dart';

enum RequestMethod { get, post, put, delete }

class ApiService extends GetConnect {
  static final ApiService instance = Get.find<ApiService>();

  @override
  void onInit() {
    super.onInit();
    httpClient.baseUrl = 'https://api.weatherbit.io/v2.0/';
  }

  Future<ApiResponse> apiCall({
    required String route,
    required RequestMethod requestMethod,
    Map<String, dynamic>? params,
    Map<String, String>? headers,
  }) async {
    Response response;
    if (requestMethod == RequestMethod.get) {
      response = await get(route, query: params, headers: headers);
    } else if (requestMethod == RequestMethod.post) {
      response = await post(route, params != null ? FormData(params) : params, headers: headers);
    } else if (requestMethod == RequestMethod.put) {
      response = await put(route, params != null ? FormData(params) : params, headers: headers);
    } else {
      response = await delete(route);
    }

    return _handleResponse(response);
  }

  ApiResponse _handleResponse(Response response) {
    if (response.status.isOk && response.body is Map<String, dynamic>) {
      return ApiResponse(
        isSuccess: true,
        status: response.status,
        data: response.body,
      );
    }

    return ApiResponse(
      isSuccess: false,
      status: response.status,
      errorMessage: response.body['message'] != null && response.body['message'] is String
          ? response.body['message']
          : "something_went_wrong".tr,
    );
  }
}

class ApiFailedException implements Exception {
  ApiResponse? response;

  ApiFailedException(this.response);
}
