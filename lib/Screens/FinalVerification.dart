import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/Screens/BottomNavBar.dart';
import 'package:hotel_app/Screens/logInorSignUp.dart';
import 'package:hotel_app/widgets/custombutton.dart';

import '../widgets/Navigation.dart';

class finalVerification extends StatefulWidget {
  const finalVerification({super.key});

  @override
  State<finalVerification> createState() => _finalVerificationState();
}

class _finalVerificationState extends State<finalVerification> {
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Finance & Legal",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w600,
            ),),
          backgroundColor:  Color(0xfff5f9ff),
          elevation: 2,
          iconTheme: const IconThemeData(
              color: Colors.black
          ),
        ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const Text(
          "Final verification will be done through a third party. Please till proper information",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w500,
          )),
            Container(
              margin: EdgeInsets.only(top: 38,bottom: 10),
              child: const Text(
                "What is mandatory for verification?",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
              InkWell(
                onTap: () => () {},
                child: const Text(
                  'Hotel GST Details',
                  style: TextStyle(
                      decoration: TextDecoration.underline, color: Colors.blue),
                ),
              ),
              InkWell(
                onTap: () => () {},
                child: const Text(
                  'Canceled Check(Mandatory)',
                  style: TextStyle(
                      decoration: TextDecoration.underline, color: Colors.blue),
                ),
              ),
              InkWell(
                onTap: () => () {},
                child: const Text(
                  'PAN Card(Mandatory)',
                  style: TextStyle(
                      decoration: TextDecoration.underline, color: Colors.blue),
                ),
              ),
              InkWell(
                onTap: () => () {},
                child: const Text(
                  'Channel Manager Details',
                  style: TextStyle(
                      decoration: TextDecoration.underline, color: Colors.blue),
                ),
              ),
              InkWell(
                onTap: () => () {},
                child: const Text(
                  'PMS Details(Property Management System)',
                  style: TextStyle(
                      decoration: TextDecoration.underline, color: Colors.blue),
                ),
              ),
              InkWell(
                onTap: () => () {},
                child: const Text(
                  'Lease Agreement(If Property on lease)',
                  style: TextStyle(
                      decoration: TextDecoration.underline, color: Colors.blue),
                ),
              ),
              InkWell(
                onTap: () => () {},
                child: const Text(
                  'License(Mandatory)',
                  style: TextStyle(
                      decoration: TextDecoration.underline, color: Colors.blue),
                ),
              ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: CustomButton(text: 'Save & Continue',
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w700,
                    ),
                    onClick: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const BottomNavigation()),
                      );
                    }),
              ),
            )
            ],
        ),
      )
    );
  }
}