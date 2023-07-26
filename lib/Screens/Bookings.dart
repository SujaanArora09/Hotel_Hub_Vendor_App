import 'package:flutter/material.dart';
import 'package:hotel_app/widgets/CustomDropdownBookings.dart';
import 'package:hotel_app/widgets/custombutton.dart';

import '../widgets/bookingDeatilsWidget.dart';



class Bookings extends StatefulWidget {

  const Bookings({Key? key}) : super(key: key);

  @override
  State<Bookings> createState() => _BookingsState();
}

final List<String> _SortValues = [
  "sort1",
  "sort2",
  "sort3",
  "sort4",
];
final List<String> _FilterList = [
  "Filter1",
  "Filter2",
  "Filter3",
  "Filter4",
];

class _BookingsState extends State<Bookings> {
  String dropdownValue = _SortValues.first;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomDropdownBooking(list: _SortValues,
                      height: 30,
                      width: 90,
                      hint: "sort",
                    whichIcon: 1,
                    icon: true,
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                    ),),
                    SizedBox(width: 12,),
                    CustomDropdownBooking(list: _FilterList,
                      height: 30,
                      width: 100,
                      whichIcon: 2,
                      hint: "Filter",
                      icon: true,
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                      ),)
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 10),
                  child: const Text(
                    "Today",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                            margin:   const EdgeInsets.only(top: 7,bottom: 7),
                            child: BookingInformation(),),
                         Container(
                            child: BookingInformation(),
                        margin: const EdgeInsets.only(top: 7,bottom: 7),),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


