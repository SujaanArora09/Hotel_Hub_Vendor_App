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

class RegisterHotel extends StatefulWidget {
  const RegisterHotel({super.key});

  @override
  State<RegisterHotel> createState() => _RegisterHotelState();
}

class _RegisterHotelState extends State<RegisterHotel> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
            backgroundColor:const Color(0xfff5f9ff),
            body: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 1,
                  ),

                  Container(
                    margin: const EdgeInsets.only(bottom: 200),
                    child: Column(
                      children: [
                        const Text(
                          "You haven’t registered your Hotel",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff6fa8fc),
                            fontSize: 16,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                            padding: EdgeInsets.only(left: 100,right: 100),
                            child: Image.asset("assets/images/RegisterHotelimage.png")),
                        SizedBox(height: 30,),

                        const Text(
                          "List your Property for free.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff6fa8fc),
                            fontSize: 24,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomButton(text: 'Register Your Hotel',
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w700,
                      ),
                      onClick: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const addRooms()),
                        );
                      })

                ],
              ),
            )
        ),
      ),
    );
  }
}