import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/Screens/BasicInfo.dart';
import 'package:hotel_app/Screens/Registered.dart';
import 'package:hotel_app/widgets/custombutton.dart';
import '../utils/constants.dart';
import '../widgets/Navigation.dart';


class LikeList extends StatefulWidget {
  const LikeList({super.key});

  @override
  State<LikeList> createState() => _LikeListState();
}

int selected = 0;
bool _isChecked1 = false;
bool _isChecked2 = false;


class _LikeListState extends State<LikeList> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff5f9ff),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Text(
                "What you like to List?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = 0;
                        });
                      },
                      child: staySelectWidget(
                          "Hotel", selected == 0 ? Color(0xff1e91b6) : Color(0xffcdcdcd), selected == 0 ? true:false),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = 1;
                        });
                      },
                      child: staySelectWidget(
                          "Resort", selected == 1 ? Color(0xff1e91b6) : Color(0xffcdcdcd), selected == 1 ? true:false),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = 2;
                        });
                      },
                      child: staySelectWidget(
                          "Bungalow", selected == 2 ? Color(0xff1e91b6) : Color(0xffcdcdcd) , selected == 2 ? true:false),
                    ),GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = 3;
                        });
                      },
                      child: staySelectWidget(
                          "Dorm", selected == 3 ? Color(0xff1e91b6) : Color(0xffcdcdcd) , selected == 3 ? true:false),
                    ),GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = 4;
                        });
                      },
                      child: staySelectWidget(
                          "Cottage", selected == 4 ? Color(0xff1e91b6) : Color(0xffcdcdcd) , selected == 4 ? true:false),
                    ),GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = 5;
                        });
                      },
                      child: staySelectWidget(
                          "Apartment", selected == 5 ? Color(0xff1e91b6) : Color(0xffcdcdcd) , selected == 5 ? true:false),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const Text(
                        "Now would you like to set the Property",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
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
                              SizedBox(width: 24,),
                              const Text(
                                "Entire Property",
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
                              SizedBox(width: 24,),
                              const Text(
                                "Private Property",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: CustomButton(text: 'Next', onClick: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const BasicInfo()),
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

Widget staySelectWidget(String type, Color color, bool isSelected) {
  return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    Container(
      margin: const EdgeInsets.only(top: 6,bottom: 6),
      width: 328,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: color, width: 2, ),
        boxShadow: isSelected ? [
          const BoxShadow(
            color: Color(0x1e18274b),
            blurRadius: 12.94,
            offset: Offset(0, 2.83),
          ),
          const BoxShadow(
            color: Color(0x1e18274b),
            blurRadius: 4.45,
            offset: Offset(0, 1.62),
          ),
        ] : null,
        color: Colors.white,
      ),
      padding: const EdgeInsets.only(left: 24),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          Text(
            type,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xff393939),
              fontSize: 22,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    )
  ]);
}
