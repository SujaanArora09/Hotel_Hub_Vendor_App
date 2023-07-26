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

class Rooms extends StatefulWidget {
  const Rooms({super.key});

  @override
  State<Rooms> createState() => _RoomsState();
}

class _RoomsState extends State<Rooms> {

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
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Rooms Present",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "Present Rooms",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.only(bottom: 200),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 70,right: 70),
                            child: Image.asset("assets/images/RoomPresent.png")),
                        SizedBox(height: 20,),
                        const Text(
                          "No Rooms Registered",
                          style: TextStyle(
                            color: Color(0xff838383),
                            fontSize: 14,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomButton(text: 'Add Room',
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