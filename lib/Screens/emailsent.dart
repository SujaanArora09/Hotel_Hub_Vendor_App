import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/Screens/Registered.dart';
import 'package:hotel_app/Screens/logIn.dart';
import '../widgets/Navigation.dart';


class EmailSent extends StatefulWidget {
  const EmailSent({super.key});

  @override
  State<EmailSent> createState() => _EmailSentState();
}

class _EmailSentState extends State<EmailSent> {

  void initState() {
    Timer(Duration(seconds: 4), () => NextScreen(context, LogInScreen()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(40),
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Container(
                child: Image.asset('assets/images/verifylinkimage.png')
              ),
              const Text(
                "We have send you an email with an account verification/activation link.",
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
      ),
    );
  }
}
