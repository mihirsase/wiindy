import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error,
              size: 54,
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Unable to fetch the data',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              'Please try again later',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
