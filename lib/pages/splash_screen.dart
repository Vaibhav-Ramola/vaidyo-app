import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image/image.dart' as imgLib;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  imgLib.Decoder? dec = imgLib.TiffDecoder();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: SvgPicture.asset(
            'assets/images/splash_screen.svg',
            color: const Color(0xff3C9785),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
