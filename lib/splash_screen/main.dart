import 'package:elderwell/signup/login.dart';
import 'package:elderwell/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:get/get.dart';
// import 'package:elderwell/diet/breakfast.dart';
// import 'package:elderwell/signup/signup.dart';
// import 'package:elderwell/report/report.dart';
// import 'package:percent_indicator/percent_indicator.dart';
import 'package:lottie/lottie.dart';
// import 'package:flutter_svg/flutter_svg.dart';
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
    return GetMaterialApp(
      home: Scaffold(
        body: AnimatedSplashScreen(
          duration: 4000,

          splash: Image.asset ('assets/images/splashscreen.png'),
          splashIconSize: double.maxFinite,
          nextScreen: const SignUp(),
          splashTransition: SplashTransition.fadeTransition,
        ),
      ),
    );
  }
}