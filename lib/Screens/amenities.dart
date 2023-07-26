import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/Screens/PropertyDescription.dart';
import 'package:hotel_app/widgets/custombutton.dart';

class AmenitiesScreen extends StatefulWidget {
  const AmenitiesScreen({super.key});

  @override
  State<AmenitiesScreen> createState() => _AmenitiesScreenState();
}



class _AmenitiesScreenState extends State<AmenitiesScreen> {
  final List<bool> _checked = [false, false, false , false , false , false , false];
  final List<String> _title = ["Laundry","Elevator","Air Conditioner","House Keeping", " Kitchen", "Wifi", "Parking"];


  Widget checkboxList() {
    return SingleChildScrollView(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: _checked.length,
        itemBuilder: (context, index) {
          return CheckboxListTile(
            title: Text(_title[index]),
            value: _checked[index],
            onChanged: (bool? value) {
              setState(() {
                _checked[index] = value!;
              });
            },
          );
        },
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
          height: 800,
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 14, bottom: 24),
                width: 48,
                height: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xffcdcfd0),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    children: [
                      const Text(
                        "Amenities",
                        style: TextStyle(
                          color: Color(0xff090a0a),
                          fontSize: 24,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: checkboxList(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                        child: CustomButton(text: 'DONE',
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w700,
                            )
                            , onClick: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const PropertyDiscription()),
                              );
                            }),
                      )
                    ],
                  ),
                ),
              )


            ],
          ),
        )
    );
  }
}
