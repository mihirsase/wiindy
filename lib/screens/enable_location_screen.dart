import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wiindy/screens/weather_screen.dart';
import 'package:wiindy/services/location_service.dart';

class EnableLocationScreen extends StatefulWidget {
  const EnableLocationScreen({Key? key}) : super(key: key);

  @override
  State<EnableLocationScreen> createState() => _EnableLocationScreenState();
}

class _EnableLocationScreenState extends State<EnableLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.location_on,
                size: 50,
              ),
              const Text(
                "Enable location to use the app",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                "We need you device location to provide you with accurate weather data.",
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(
                    const Color(0xFF457FFA),
                  ),
                ),
                onPressed: () {
                  LocationService.instance.enableLocationSharing(onGranted: () {
                    Get.to(() => const WeatherScreen());
                  });
                },
                child: const SizedBox(
                  width: 100,
                  height: 50,
                  child: Center(
                    child: Text(
                      'Enable',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
