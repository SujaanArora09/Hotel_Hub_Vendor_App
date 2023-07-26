import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hotel_app/Screens/Tabs/Exterior.dart';
import 'package:hotel_app/Screens/logInorSignUp.dart';
import 'package:hotel_app/utils/constants.dart';
import '../widgets/Navigation.dart';
import 'Tabs/Interior.dart';

class UploadImage extends StatefulWidget {
  const UploadImage({super.key});

  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor:const Color(0xfff5f9ff),
          appBar: AppBar(
            title: const Text("Upload Hotel Images",
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
          body: Column(
            children: const [
              TabBar(tabs: [
                Tab(
                  child: Text(
              "Interior",
                style: TextStyle(
                  color: Color(0xff1e91b6),
                  fontSize: 14,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w500,
                ),
              )
                ),
                Tab(
                  child: Text(
                    "Exterior",
                    style: TextStyle(
                      color: Color(0xff1e91b6),
                      fontSize: 14,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w500,
                    ),
                  ),)
              ],),
              Expanded(
                child: TabBarView(children: [
                  Interior(),
                  Exterior(),
                ]),
              )
            ],
          ),
      ),
    );
  }
}