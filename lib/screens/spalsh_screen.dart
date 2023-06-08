import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wiindy/screens/enable_location_screen.dart';
import 'package:wiindy/screens/weather_screen.dart';
import 'package:wiindy/services/location_service.dart';
import 'package:wiindy/services/pallete.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).then((value) {
      LocationService.instance.checkLocationPermission().then((bool status) {
        if (status) {
          Get.off(() => const WeatherScreen());
        } else {
          Get.off(() => const EnableLocationScreen());
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Pallete.primary,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'lib/assets/weather/wind.png',
                height: 80,
                width: 80,
              ),
              Text(
                "Wiindy",
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: Pallete.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
