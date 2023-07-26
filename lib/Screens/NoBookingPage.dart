import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hotel_app/Screens/AddRooms.dart';
import 'package:hotel_app/Screens/Tabs/Exterior.dart';
import 'package:hotel_app/Screens/logInorSignUp.dart';
import 'package:hotel_app/utils/constants.dart';
import 'package:hotel_app/widgets/custombutton.dart';
import '../widgets/Navigation.dart';
import 'FinanceAndLegal.dart';
import 'Tabs/Interior.dart';

class NoBooking extends StatefulWidget {
  const NoBooking({super.key});

  @override
  State<NoBooking> createState() => _NoBookingState();
}

class _NoBookingState extends State<NoBooking> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
            backgroundColor:const Color(0xfff5f9ff),
            body: Center(
                child:

                  Container(
                    margin: const EdgeInsets.only(bottom: 200),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 70,right: 70),
                          child: Image.asset("assets/images/NoBookingImage.png"),
                        ),
                        const SizedBox(height: 10,),

                        const  Text(
                          "Your Bookings",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const  Text(
                          "Currently you have no Bookings",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff5d5d5d),
                            fontSize: 18,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),

              ),
              ),
            )
        );

  }
}