import 'package:flutter/material.dart';
import 'package:hotel_app/Screens/Hotelregisterpage.dart';
import 'package:hotel_app/Screens/NoBookingPage.dart';
import 'package:hotel_app/Screens/splash.dart';

import 'Screens/BottomNavBar.dart';

void main() async{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
