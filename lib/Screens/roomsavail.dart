import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/Screens/Policies.dart';
import 'package:hotel_app/widgets/custombutton.dart';

import '../widgets/RoomInformationWidget.dart';
class RoomsAvailableScreen extends StatefulWidget {
  const RoomsAvailableScreen({super.key});

  @override
  State<RoomsAvailableScreen> createState() => _RoomsAvailableScreenState();
}

class _RoomsAvailableScreenState extends State<RoomsAvailableScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff5f9ff),
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Rooms Available",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Present Rooms",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "(Total Rooms: 3)",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 8,bottom: 8),
                              child: AvailableRoomTile()
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8,bottom: 8),
                              child: AvailableRoomTile()
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8,bottom: 8),
                              child: AvailableRoomTile()
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                CustomButton(text: 'Add Room', onClick: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Policies()),
                  );
                })
              ],
            ),
          ),
      ),
    );
  }
}

