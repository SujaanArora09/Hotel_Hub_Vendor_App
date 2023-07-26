import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/Screens/logInorSignUp.dart';

import '../widgets/Navigation.dart';

class AboutHotel extends StatefulWidget {
  const AboutHotel({super.key});

  @override
  State<AboutHotel> createState() => _AboutHotelState();
}
List<String>  title = ['Hotel Information','Images','Amenities','Property Details','Policies & Finance','User Profile'];
class _AboutHotelState extends State<AboutHotel> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f9ff),
      body: Container(
        margin: const EdgeInsets.only(top: 20),
        child: ListView.builder(
          itemCount: title.length,
            itemBuilder: (context,index){
          return Container(
            height: 90,
            margin: const EdgeInsets.only(top: 6,bottom: 6 ,left: 20,right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: const Color(0xffdfdfdf), width: 1, ),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x1e18274b),
                  blurRadius: 12.94,
                  offset: Offset(0, 2.83),
                ),
                BoxShadow(
                  color: Color(0x1e18274b),
                  blurRadius: 4.45,
                  offset: Offset(0, 1.62),
                ),
              ],
              color: Colors.white,
            ),
            child: Center(
              child: ListTile(
                title: Text(
                  title[index],
                  style: const TextStyle(
                    color: Color(0xff1e91b6),
                    fontSize: 18,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                  style: TextStyle(
                    color: Color(0xff787878),
                    fontSize: 12,
                  ),
                ),
                trailing: const Icon(
                    Icons.arrow_forward
                ),

              ),
            ),
          );
        }),
      )
    );
  }
}