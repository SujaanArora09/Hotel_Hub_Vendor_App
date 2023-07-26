import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/Screens/selectLocation.dart';
import 'package:hotel_app/widgets/custombutton.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Color(0xfff5f9ff),
        body:
        Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 180,
              ),
              Stack(
                children: [
                  Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffe7f3ff),
                    ),
                  ),
                ),
                  Center(
                    heightFactor: 1.7,
                    child: Container(
                      width: 61,
                      height: 61,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset('assets/images/locationlogo.png'),
                    ),
                  )
              ]),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: const Text(
                  "Enable location",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: const Text(
                  "You need to enable loaction to browse stays near you",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff5d5d5d),
                    fontSize: 18,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: CustomButton(text: 'Allow Location',
                      textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w700,
                      ),
                      onClick: (){
                    //onclick
                  }),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                  textStyle: const TextStyle(
                    color: Color(0xff616161),
                    fontSize: 16,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),

                ), onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SelectLocationScreen()),
                );
              },
                child: const Text('Enter Manually'),
              ),
            ],
          ),
        ),
    );
  }
}