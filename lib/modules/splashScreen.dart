import 'package:flutter/material.dart';
import 'package:islami_app/core/theme/appColors.dart';
import 'package:islami_app/modules/Onboarding/OnBoaringScreen.dart';

class SplashScreen extends StatefulWidget {
  static const String route = 'SplashScreen';
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamed(context, OnBoaringScreen.route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.secondaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 44, vertical: 295),
        child: Column(children: [Image.asset("assets/images/app_logo.png")]),
      ),
    );
  }
}
