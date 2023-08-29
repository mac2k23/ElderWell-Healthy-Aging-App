import 'package:elderwell/breakfast.dart';
import 'package:elderwell/signup/login.dart';
import 'package:elderwell/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:elderwell/diet.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const SplashScreen());
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: AnimatedSplashScreen(
          splash: 'assets/images/splashscreen.png',
          nextScreen: Breakfast(),
          splashTransition: SplashTransition.fadeTransition,
        ),
      ),
    );
  }
}