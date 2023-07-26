import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/Screens/logInorSignUp.dart';
import 'package:hotel_app/Screens/roomDescription.dart';
import 'package:hotel_app/widgets/customtextfield.dart';

import '../widgets/Navigation.dart';
import '../widgets/custombutton.dart';
import '../widgets/yesnocheckbox.dart';
import 'BasicInfo.dart';


class PropertyDiscription extends StatefulWidget {
  const PropertyDiscription({super.key});

  @override
  State<PropertyDiscription> createState() => _PropertyDiscriptionState();
}

String selectedYear = '2023';


class _PropertyDiscriptionState extends State<PropertyDiscription> {
  get hideHint => Container(height: 0);
  bool yesSelected1 = false;
  bool noSelected1 = false;
bool yesSelected2 = false;
  bool noSelected2 = false;
bool yesSelected3 = false;
  bool noSelected3 = false;
bool yesSelected4 = false;
  bool noSelected4 = false;
  bool yesSelected5 = false;
  bool noSelected5 = false;
bool yesSelected6 = false;
  bool noSelected6 = false;



  @override

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff5f9ff),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const Text(
                  "Property Description",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                    child: CustomTextField(hintText: 'Room Area')),
                Container(
                    margin: EdgeInsets.only(top: 15,bottom: 15),
                    width: MediaQuery.of(context).size.width,
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
                      hint: hideHint,
                      value: selectedYear,
                      onChanged: (newValue) {
                        setState(() {
                          selectedYear = newValue!;
                        });
                      },
                      items: const [
                        DropdownMenuItem(
                          value: "2020",
                          child: Text("Accommodation Only"),
                        ),
                        DropdownMenuItem(
                          value: "2021",
                          child: Text("Accommodation Only"),
                        ),
                        DropdownMenuItem(
                          value: "2022",
                          child: Text("Accommodation Only"),
                        ),
                        DropdownMenuItem(
                          value: "2023",
                          child: Text("Accommodation Only"),
                        ),
                      ],
                    )),
                CustomTextField(hintText: 'Property Size',suffixText: "Sq. Ft",),
                Container(
                    margin: const EdgeInsets.only(top: 15,bottom: 20),
                    width: MediaQuery.of(context).size.width,
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
                      hint: hideHint,
                      value: selectedYear,
                      onChanged: (newValue) {
                        setState(() {
                          selectedYear = newValue!;
                        });
                      },
                      items: const [
                        DropdownMenuItem(
                          value: "2020",
                          child: Text("Select Extra Bed Types"),
                        ),
                        DropdownMenuItem(
                          value: "2021",
                          child: Text("Select Extra Bed Types"),
                        ),
                        DropdownMenuItem(
                          value: "2022",
                          child: Text("Select Extra Bed Types"),
                        ),
                        DropdownMenuItem(
                          value: "2023",
                          child: Text("Select Extra Bed Types"),
                        ),
                      ],
                    )),
                Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  child: const Text(
                    "Cupboard",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

              Row(
                children: [
                  Checkbox(
                    value: yesSelected1,
                    onChanged: (value) {
                      setState(() {
                        yesSelected1 = value!;
                        if (yesSelected1 && noSelected1) {
                          noSelected1 = false;
                        }
                      });
                    },
                  ),
                  yesText(),
                  SizedBox(width: 90),
                  Checkbox(
                    value: noSelected1,
                    onChanged: (value) {
                      setState(() {
                        noSelected1 = value!;
                        if (noSelected1 && yesSelected1) {
                          yesSelected1 = false;
                        }
                      });
                    },
                  ),
                  noText(),
                ],
              ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: const Text(
                    "Wardrobe",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: yesSelected2,
                      onChanged: (value) {
                        setState(() {
                          yesSelected2 = value!;
                          if (yesSelected2 && noSelected2) {
                            noSelected2 = false;
                          }
                        });
                      },
                    ),

                    yesText(),
                    SizedBox(width: 90),
                    Checkbox(
                      value: noSelected2,
                      onChanged: (value) {
                        setState(() {
                          noSelected2 = value!;
                          if (noSelected2 && yesSelected2) {
                            yesSelected2 = false;
                          }
                        });
                      },
                    ),
                    noText(),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: const Text(
                    "Accommodation Only",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: yesSelected3,
                      onChanged: (value) {
                        setState(() {
                          yesSelected3 = value!;
                          if (yesSelected3 && noSelected3) {
                            noSelected3 = false;
                          }
                        });
                      },
                    ),
                    yesText(),
                    SizedBox(width: 90),
                    Checkbox(
                      value: noSelected3,
                      onChanged: (value) {
                        setState(() {
                          noSelected3 = value!;
                          if (noSelected3 && yesSelected3) {
                            yesSelected3 = false;
                          }
                        });
                      },
                    ),
                    noText(),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: const Text(
                    "Free Breakfast",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: yesSelected4,
                      onChanged: (value) {
                        setState(() {
                          yesSelected4 = value!;
                          if (yesSelected4 && noSelected4) {
                            noSelected4 = false;
                          }
                        });
                      },
                    ),
                    yesText(),
                    SizedBox(width: 90),
                    Checkbox(
                      value: noSelected4,
                      onChanged: (value) {
                        setState(() {
                          noSelected4 = value!;
                          if (noSelected4 && yesSelected4) {
                            yesSelected4 = false;
                          }
                        });
                      },
                    ),
                    noText(),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: const Text(
                    "Free Lunch",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: yesSelected6,
                      onChanged: (value) {
                        setState(() {
                          yesSelected6 = value!;
                          if (yesSelected6 && noSelected6) {
                            noSelected6 = false;
                          }
                        });
                      },
                    ),
                    yesText(),
                    SizedBox(width: 90),
                    Checkbox(
                      value: noSelected6,
                      onChanged: (value) {
                        setState(() {
                          noSelected6 = value!;
                          if (noSelected6 && yesSelected6) {
                            yesSelected6 = false;
                          }
                        });
                      },
                    ),
                    noText(),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: const Text(
                    "Free Dinner",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: yesSelected5,
                      onChanged: (value) {
                        setState(() {
                          yesSelected5 = value!;
                          if (yesSelected5 && noSelected5) {
                            noSelected5= false;
                          }
                        });
                      },
                    ),
                    yesText(),
                    SizedBox(width: 90),
                    Checkbox(
                      value: noSelected5,
                      onChanged: (value) {
                        setState(() {
                          noSelected5 = value!;
                          if (noSelected5 && yesSelected5) {
                            yesSelected5 = false;
                          }
                        });
                      },
                    ),
                    noText()
                  ],
                ),
                CustomButton(text: 'Next',
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w700,
                    ),
                    onClick: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RoomDescription()),
                  );
                })
              ],
            ),
          ),
        )
      ),
    );
  }

  Text yesText() {
    return const Text(
                "Yes",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w500,
                ),
              );
  }
  Text noText() {
    return const Text(
      "No",
      style: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w500,
      ),
    );
  }
}