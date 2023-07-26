import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/Screens/Location.dart';
import 'package:hotel_app/Screens/logInorSignUp.dart';
import 'package:hotel_app/widgets/custombutton.dart';
import 'package:hotel_app/widgets/customtextfield.dart';

import '../widgets/Navigation.dart';

class BasicInfo extends StatefulWidget {
  const BasicInfo({super.key});

  @override
  State<BasicInfo> createState() => _BaiscInfoState();
}

String selectedYear = '2023';

class _BaiscInfoState extends State<BasicInfo> {
  @override

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xfff5f9ff),
          body : Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Basic Information",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextField(hintText: 'Stay/Hotel Name'),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Taking Bookings Since",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 15),
                    width: 94,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xffacacac)),
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.only(
                      left: 19,
                      right: 12,
                    ),
                    child: DropdownButtonFormField(
                      value: selectedYear,
                      onChanged: (newValue) {
                        setState(() {
                          selectedYear = newValue!;
                        });
                      },
                      items: const [
                        DropdownMenuItem(
                          value: "2020",
                          child: Text("2020"),
                        ),
                        DropdownMenuItem(
                          value: "2021",
                          child: Text("2021"),
                        ),
                        DropdownMenuItem(
                          value: "2022",
                          child: Text("2022"),
                        ),
                        DropdownMenuItem(
                          value: "2023",
                          child: Text("2023"),
                        ),
                      ],
                    )),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: const Text(
                    "Contact Details",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: CustomTextField(hintText: 'Contact Number')),
                CustomTextField(hintText: 'Email Address'),

                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: CustomButton(text: 'Next',
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                        ),
                        onClick: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const LocationScreen()),
                          );
                    }),
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}