import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/Screens/logInorSignUp.dart';

import '../widgets/Navigation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 4), () => NextScreen(context, LogInorSignUp()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff1e91b6),
      body: Center(
        child: Text(
          "Splash Screen",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w500,
          ),
        ),
      )
    );
  }
}