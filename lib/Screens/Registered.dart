import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotel_app/Screens/Likelist.dart';
import 'package:hotel_app/widgets/custombutton.dart';
import 'package:hotel_app/widgets/customtextfield.dart';
import 'package:hotel_app/widgets/socialmediabutton.dart';

import '../widgets/Navigation.dart';
import 'logInorSignUp.dart';


class Registered extends StatefulWidget {
  const Registered({super.key});

  @override
  State<Registered> createState() => _RegisteredState();
}

class _RegisteredState extends State<Registered> {



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            Container(
              margin: const EdgeInsets.all(40),
              child: Column(

                //mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  Container(
                    child: Image.asset('assets/images/registeredimage.png')
                  ),
                  const Text(
                    "Yay!! We have registered your email with us you can start registration process",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: CustomButton(text: 'Start Registration', onClick: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LikeList()),
                );
              },
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w700,
              )),
            )
          ],
        ),
      ),
    );
  }
}
