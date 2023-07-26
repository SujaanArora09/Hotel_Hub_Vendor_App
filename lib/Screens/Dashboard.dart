import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hotel_app/Screens/AboutHotel.dart';
import 'package:hotel_app/Screens/AddRooms.dart';
import 'package:hotel_app/Screens/Tabs/Exterior.dart';
import 'package:hotel_app/Screens/logInorSignUp.dart';
import 'package:hotel_app/utils/constants.dart';
import 'package:hotel_app/widgets/custombutton.dart';
import '../widgets/Navigation.dart';
import '../widgets/RoomInformationWidget.dart';
import '../widgets/bookingDeatilsWidget.dart';
import 'FinanceAndLegal.dart';
import 'Tabs/Interior.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          backgroundColor:const Color(0xfff5f9ff),
            body: Container(
              padding: const EdgeInsets.all(15),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
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
                      child: ListTile(
                        leading:  CircleAvatar(
                          radius: 23,
                          child: ClipOval(
                            child: Image.asset("assets/images/HotelImage.png",fit: BoxFit.cover,),
                          ),
                        ),
                        title: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Raddison Hotel",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff090909),
                              fontSize: 18,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        subtitle: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Noida",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff6d6d6d),
                              fontSize: 12,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const AboutHotel()),
                          );
                        },
                      ),
                    ),
                    Container(
                      margin:EdgeInsets.only(top: 12,bottom: 12),
                      height: 91,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xffe4e4e7), width: 1, ),
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "PAYMENTS RECEIVED",
                                style: TextStyle(
                                  color: Color(0xff71717a),
                                  fontSize: 11,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1,
                                ),
                              ),
                              Text(
                                "₹ 12,426",
                                style: TextStyle(
                                  color: Color(0xff18181b),
                                  fontSize: 21,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),

                          Row(
                            children: const [
                              Text(
                                "+ 36%",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xff22c55e),
                                  fontSize: 13,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 4),
                              Icon(Icons.arrow_upward_sharp,
                              color: Color(0xff22c55e),
                              size: 15,),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin:EdgeInsets.only(bottom: 20),
                      height: 91,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xffe4e4e7), width: 1, ),
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "TOTAL BOOKINGS",
                                style: TextStyle(
                                  color: Color(0xff71717a),
                                  fontSize: 11,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1,
                                ),
                              ),
                              Text(
                                "5",
                                style: TextStyle(
                                  color: Color(0xff18181b),
                                  fontSize: 21,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),

                          Row(
                            children: const [
                              Text(
                                "+ 14%",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xffef4444),
                                  fontSize: 13,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 4),
                              Icon(Icons.arrow_downward_sharp,
                                color: Color(0xffef4444),
                                size: 15,),
                            ],
                          )
                        ],
                      ),
                    ),
                    const Text(
                      "Recent Bookings",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      height: 250,
                      padding: EdgeInsets.only(top: 25,bottom: 25),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          BookingInformation(),
                          SizedBox(width: 8,),
                          BookingInformation(),
                          SizedBox(width: 8,),
                          BookingInformation(),
                          SizedBox(width: 8,),
                        ],
                      ),
                    ),
                    const Text(
                      "Rooms Listed",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      height: 320,
                      padding: EdgeInsets.only(top: 25,bottom: 25),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          AvailableRoomTile(),
                          SizedBox(width: 8,),
                          AvailableRoomTile(),
                          SizedBox(width: 8,),
                          AvailableRoomTile(),
                          SizedBox(width: 8,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
        ),
      ),
    );
  }
}