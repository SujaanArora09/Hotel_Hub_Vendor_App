import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custombutton.dart';

class BookingInformation extends StatelessWidget {
  const BookingInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width-30,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
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
      child: Padding(
        padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Booking on - 23 Jan 2023",
                  style: TextStyle(
                    color: Color(0xff3d99ee),
                    fontSize: 14,
                    fontFamily: "Satoshi Variable",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Booking ID- 13932731109",
                  style: TextStyle(
                    color: Color(0xff3d99ee),
                    fontSize: 10,
                    fontFamily: "Satoshi Variable",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "2 Adults - 5 nights",
                  style: TextStyle(
                    color: Color(0xff3b3b3b),
                    fontSize: 16,
                    fontFamily: "Satoshi Variable",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Payment received - ₹ 12000",
                  style: TextStyle(
                    color: Color(0xff3f3f3f),
                    fontSize: 10,
                    fontFamily: "Satoshi Variable",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(height: 4,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Single room",
                  style: TextStyle(
                    color: Color(0xff3b3b3b),
                    fontSize: 16,
                    fontFamily: "Satoshi Variable",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Color(0xffa1a1a1), width: 1, ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4, ),
                  child: const Text(
                    "1 Night",
                    style: TextStyle(
                      color: Color(0xff494949),
                      fontSize: 10,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Check-In",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 1,),
                Text(
                  "Check-Out",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 20,)
              ],
            ),
            SizedBox(height: 4,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: const [
                Text(
                  "23 Mar 2023",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "10:00 AM",
                  style: TextStyle(
                    color: Color(0xff757575),
                    fontSize: 8,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "25 Mar 2023",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "10:00 AM",
                  style: TextStyle(
                    color: Color(0xff757575),
                    fontSize: 8,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8,),
            Expanded(
              child: CustomButton(text: 'Guest Information',
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: "Satoshi Variable",
                    fontWeight: FontWeight.w500,
                  ),
                  onClick: (){

                  }),
            ),
          ],
        ),
      ),
    );
  }
}