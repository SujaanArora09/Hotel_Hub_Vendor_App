import 'package:flutter/material.dart';
import 'package:hotel_app/Screens/Dashboard.dart';
import 'package:hotel_app/Screens/Reviews.dart';

import '../utils/constants.dart';
import 'Bookings.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  List body = [
    Bookings(),
    Reviews(),
    Dashboard()
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: body[index],
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 85,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatedWidget(onTap: () {
                  setState(() {
                    index = 0;
                  });
                },
                    "assets/images/BookMarkLogo.png",
                    "Bookings",
                    index == 0 ? Colors.white : Colors.white,
                    index == 0 ? Color(0xff1e91b6) : black.withOpacity(.5)),
                FloatedWidget(onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                    "assets/images/StarLogo.png",
                    "Reviews",
                    index == 1 ? Colors.white : Colors.white,
                    index == 1 ? Color(0xff1e91b6): black.withOpacity(.5)),
                FloatedWidget(onTap: () {
                  setState(() {
                    index = 2;
                  });
                },
                    "assets/images/DashboardIcon.png",
                    "Dashboard",
                    index == 2 ? Colors.white : Colors.white,
                    index == 2 ? Color(0xff1e91b6) : black.withOpacity(.5)),


              ],
            ),
          ),
        ));
  }
}


FloatedWidget(String image, String text, Color bgColor, Color iconColor,
    {void Function()? onTap}) {
  return Padding(
    padding: const EdgeInsets.only(top: 12),
    child: GestureDetector(
      onTap: onTap,
      child: Column(children: [
        CircleAvatar(
          radius: 22,
          backgroundColor: bgColor,
          child: Image.asset(
            image,
            color: iconColor,
            height: 25,
          ),
        ),
        addVerticalSpace(5),
        Text(
          textAlign: TextAlign.center,
          text,
          style: bodyText10normal(color: black),
        )
      ]),
    ),
  );
}
