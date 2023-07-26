import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/Screens/logInorSignUp.dart';
import 'package:hotel_app/Screens/uploadImage.dart';
import 'package:hotel_app/widgets/custombutton.dart';
import 'package:hotel_app/widgets/customtextfield.dart';

import '../widgets/Navigation.dart';

class RoomDescription extends StatefulWidget {
  const RoomDescription({super.key});

  @override
  State<RoomDescription> createState() => _RoomDescriptionState();
}

class _RoomDescriptionState extends State<RoomDescription> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: const Text(
                    "Room Description",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                CustomTextField(hintText: "Base Price"),
                CustomTextField(hintText: "Number of Extra Adults Allowed"),
                CustomTextField(hintText: "Number of Extra Child Allowed"),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: CustomButton(text: "Save and Continue",
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                        ),
                        onClick: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const UploadImage(

                            )),
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