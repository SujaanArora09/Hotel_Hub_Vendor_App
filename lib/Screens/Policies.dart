import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hotel_app/Screens/Tabs/Exterior.dart';
import 'package:hotel_app/Screens/logInorSignUp.dart';
import 'package:hotel_app/utils/constants.dart';
import 'package:hotel_app/widgets/custombutton.dart';
import '../widgets/Navigation.dart';
import 'FinanceAndLegal.dart';
import 'Tabs/Interior.dart';

class Policies extends StatefulWidget {
  const Policies({super.key});

  @override
  State<Policies> createState() => _PoliciesState();
}

bool _isChecked1 = false;
bool _isChecked2 = false;
bool _isChecked3 = false;
bool _isChecked4 = false;

class _PoliciesState extends State<Policies> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor:const Color(0xfff5f9ff),
          appBar: AppBar(
            title: const Text("Policies",
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
          body: Container(
            margin: const EdgeInsets.only(top: 20),
            padding: EdgeInsets.only(right: 20,left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: const Text(
                    "Select the Policies you want to implement.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: _isChecked1,
                      onChanged: (value) {
                        setState(() {
                          _isChecked1 = value!;
                        });
                      },
                    ),
                    const Text(
                      "Free Cancellation upto 24 hours.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: _isChecked2,
                      onChanged: (value) {
                        setState(() {
                          _isChecked2 = value!;
                        });
                      },
                    ),
                    const Text(
                      "Free Cancellation upto 24 hours.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: _isChecked3,
                      onChanged: (value) {
                        setState(() {
                          _isChecked3 = value!;
                        });
                      },
                    ),
                    const Text(
                      "Free Cancellation upto 24 hours.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: _isChecked4,
                      onChanged: (value) {
                        setState(() {
                          _isChecked4 = value!;
                        });
                      },
                    ),
                    const Text(
                      "Free Cancellation upto 24 hours.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: CustomButton(text: 'DONE',
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                        ),
                        onClick: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const FinanceAndLegal()),
                          );
                    }),
                  ),
                )
              ],
            ),
          ),
      ),
    );
  }
}