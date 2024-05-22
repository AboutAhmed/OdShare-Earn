import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odshare_earn/View/Onboarding/Onboarding.dart';
// Import your OnboardingScreen file

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to OnboardingScreen after 5 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: Center(
        child: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'Od',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff0DA600),
                  ), // Change the color for 'Od'
                ),
              TextSpan(
                text: 'Share',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  color: Colors.white, // Change the color for 'Car'
                ),
              ),
            ],
          ),
        )

      ),
    );
  }
}
