import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:vaidyo_app/pages/district_page.dart';
import 'package:vaidyo_app/pages/edit_vitals_page.dart';
import 'package:vaidyo_app/pages/enter_details_page.dart';
import 'package:vaidyo_app/pages/get_started_page.dart';
import 'package:vaidyo_app/pages/lang_select_page.dart';
import 'package:vaidyo_app/pages/login_page.dart';
import 'package:vaidyo_app/pages/patients_details_page.dart';
import 'package:vaidyo_app/pages/register_page.dart';
import 'package:vaidyo_app/pages/select_page.dart';
import 'package:vaidyo_app/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
        splash: const SplashScreen(),
        nextScreen: const GetStartePage(),
      ),
    );
  }
}
