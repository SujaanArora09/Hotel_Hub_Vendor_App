import 'package:flutter/material.dart';
import 'package:hotel_app/Screens/Rooms.dart';

import '../../widgets/custombutton.dart';
import '../Policies.dart';

class Interior extends StatelessWidget {
  const Interior({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 8),
        child: Stack(
          children:[ GridView.count(crossAxisCount: 2,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 4, 4, 4),
              child: Container(height: 50, width: 50,color: Colors.white,
              child: Image.asset("assets/images/imageicon.png"),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(4, 4, 8, 4),
              child: Container(height: 50, width: 50,color: Colors.white,
                child: Image.asset("assets/images/imageicon.png"),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 4, 4, 4),
              child: Container(height: 50, width: 50,color: Colors.white,
                child: Image.asset("assets/images/imageicon.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(4, 4, 8, 4),
              child: Container(height: 50, width: 50,color: Colors.white,
                child: Image.asset("assets/images/imageicon.png"),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 4, 4, 4),
              child: Container(height: 50, width: 50,color: Colors.white,
                child: Image.asset("assets/images/imageicon.png"),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(4, 4, 8, 4),
              child: Container(height: 50, width: 50,color: Colors.white,
                child: Image.asset("assets/images/imageicon.png"),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 4, 4, 4),
              child: Container(height: 50, width: 50,color: Colors.white,
                child: Image.asset("assets/images/imageicon.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(4, 4, 8, 4),
              child: Container(height: 50, width: 50,color: Colors.white,
                child: Image.asset("assets/images/imageicon.png"),),
            ),
          ],),
            Container(
              margin: EdgeInsets.only(bottom: 60),
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: CustomButton(text: 'Upload Image',
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w700,
                    ),
                    onClick: (){
                      //upload image
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
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
                        MaterialPageRoute(builder: (context) => const Rooms()),
                      );
                    }),
              ),
            )
        ]),
      ),
    );
  }
}

