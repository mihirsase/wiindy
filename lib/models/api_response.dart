import 'package:get/get_connect/http/src/status/http_status.dart';

class ApiResponse {
  HttpStatus? status;
  Map<String, dynamic>? data;
  bool isSuccess;
  String? errorMessage;

  ApiResponse({
    required this.isSuccess,
    this.status,
    this.data,
    this.errorMessage,
  });
}
