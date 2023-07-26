import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/Screens/amenities.dart';
import 'package:hotel_app/widgets/custombutton.dart';
import 'package:hotel_app/widgets/customtextfield.dart';

import '../widgets/generalAppBar.dart';

class SelectLocationScreen extends StatefulWidget {
  const SelectLocationScreen({super.key});

  @override
  State<SelectLocationScreen> createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocationScreen> {
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: GeneralAppBar(title: "Select Location"),
        ),
        backgroundColor: Color(0xfff5f9ff),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              CustomTextField(hintText: 'Search Area, Street Name.....'),
              Row(
                children: [
                  IconButton(onPressed: (){

                  }, icon: Image.asset("assets/images/locationlogo.png"),),
                  const SizedBox(width: 14),
                  const Text(
                    "Use Current Location",
                    style: TextStyle(
                      color: Color(0xff1e91b6),
                      fontSize: 16,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Colors.black,
                thickness: 2,
              ),
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.",
                style: TextStyle(
                  color: Color(0xff4c4c4c),
                  fontSize: 14,
                ),
              ),
              const Divider(
                color: Colors.black,
                thickness: 2,
              ),

              Expanded(
                child: ListView(
                  children: [
                    CustomTextField(hintText: 'Area'),
                    CustomTextField(hintText: 'State'),
                    CustomTextField(hintText: 'PIN CODE'),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: CustomButton(text: 'DONE',
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w700,
                    ),
                    onClick: (){
                    showModalBottomSheet<void>(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        context: context,
                        builder: (BuildContext context) {
                          return  const SizedBox(
                            height: 800,
                              child: AmenitiesScreen());
                        },
                      );
                    }),
              ),

            ],
          ),
        )
    );
  }
}