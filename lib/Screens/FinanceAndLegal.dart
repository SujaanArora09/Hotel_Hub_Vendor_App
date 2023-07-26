import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hotel_app/Screens/FinalVerification.dart';
import 'package:hotel_app/Screens/Tabs/Exterior.dart';
import 'package:hotel_app/Screens/logInorSignUp.dart';
import 'package:hotel_app/utils/constants.dart';
import 'package:hotel_app/widgets/custombutton.dart';
import 'package:hotel_app/widgets/customtextfield.dart';
import '../widgets/Navigation.dart';
import 'Tabs/Interior.dart';

class FinanceAndLegal extends StatefulWidget {
  const FinanceAndLegal({super.key});

  @override
  State<FinanceAndLegal> createState() => _FinanceAndLegalState();
}

List propertyInfoList = ['Owned', 'Leased'];
int selectedpropertyIndex = 0;

List registrationInfoList = ['Yes', 'No'];
int selectedregistrationIndex = 0;


class _FinanceAndLegalState extends State<FinanceAndLegal> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor:const Color(0xfff5f9ff),
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
          body: Container(
            margin: const EdgeInsets.only(top: 20),
            padding: EdgeInsets.only(right: 20,left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextField(hintText: 'PAN Details'),
                CustomTextField(hintText: 'Property Information'),
                CustomTextField(hintText: 'GST Details'),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: const Text(
                    "Property Information",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: const Text(
                    "Is your property owned or leased",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                      itemCount: propertyInfoList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, i) {
                        return InkWell(
                          onTap: () {
                            selectedpropertyIndex = i;
                            setState(() {});
                          },
                          child: Row(
                            children: [
                              Icon(
                                selectedpropertyIndex == i
                                    ? Icons.radio_button_checked_outlined
                                    : Icons.radio_button_off_outlined,
                                color: selectedpropertyIndex == i
                                    ? Colors.blueAccent
                                    : Colors.grey,
                              ),
                              addHorizontalySpace(6),
                              Text(
                                propertyInfoList[i],
                                style: bodyText15normal(
                                    color: black.withOpacity(0.6)),
                              ),
                              const SizedBox(width: 65,)
                            ],
                          ),
                        );
                      }),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10,top: 20),
                  child: const Text(
                    "Do you have registration",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ),
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                      itemCount: registrationInfoList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, i) {
                        return InkWell(
                          onTap: () {
                            selectedregistrationIndex = i;
                            setState(() {});
                          },
                          child: Row(
                            children: [
                              Icon(
                                selectedregistrationIndex == i
                                    ? Icons.radio_button_checked_outlined
                                    : Icons.radio_button_off_outlined,
                                color: selectedregistrationIndex == i
                                    ? Colors.blueAccent
                                    : Colors.grey,
                              ),
                              addHorizontalySpace(6),
                              Text(
                                registrationInfoList[i],
                                style: bodyText15normal(
                                    color: black.withOpacity(0.6)),
                              ),
                              const SizedBox(width: 65,)
                            ],
                          ),
                        );
                      }),
                ),
                Container(
                  width: MediaQuery. of(context). size. width,
                  height: 130,
                  margin: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xffd7d7d7), width: 1, ),
                    color: const Color(0xfff4f4f4),
                  ),
                  padding: const EdgeInsets.only(top: 30, bottom: 28, ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Expanded(child: Image.asset('assets/images/uploadImage.png')),
                      SizedBox(height: 8),
                      const Text(
                        "Upload Registration",
                        style: TextStyle(
                          color: Color(0xff616161),
                          fontSize: 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
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
                            MaterialPageRoute(builder: (context) => const finalVerification()),
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