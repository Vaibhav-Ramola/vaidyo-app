import 'package:flutter/material.dart';
import 'package:vaidyo_app/theme_data.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Image.asset(
            'assets/images/splash_screen.jpg',
            // color: backgroundColor,
          ),
        ),
      ),
    );
  }
}
