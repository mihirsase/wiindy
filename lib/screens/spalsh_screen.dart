import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wiindy/screens/enable_location_screen.dart';
import 'package:wiindy/screens/weather_screen.dart';
import 'package:wiindy/services/location_service.dart';

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
          Get.to(() => const WeatherScreen());
        } else {
          Get.to(() => const EnableLocationScreen());
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF457FFA),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'lib/assets/weather/wind.png',
                height: 80,
                width: 80,
              ),
              const Text(
                "Wiindy",
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
