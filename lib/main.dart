import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wiindy/screens/weather_screen.dart';
import 'package:wiindy/services/api_service.dart';

void main() {
  Get.put(ApiService());
  runApp(const Wiindy());
}

class Wiindy extends StatelessWidget {
  const Wiindy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, widget) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: widget!,
        );
      },
      home: const WeatherScreen(),
    );
  }
}
