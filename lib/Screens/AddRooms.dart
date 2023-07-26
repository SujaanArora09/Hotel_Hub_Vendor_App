import 'package:flutter/material.dart';
import 'package:hotel_app/Screens/roomsavail.dart';
import 'package:hotel_app/widgets/custombutton.dart';
import 'package:hotel_app/widgets/customtextfield.dart';
import 'package:flutter/cupertino.dart';

class addRooms extends StatefulWidget {
  const addRooms({Key? key}) : super(key: key);

  @override
  State<addRooms> createState() => _addRoomsState();

}

class _addRoomsState extends State<addRooms> {
  final List<bool> _checked = [false, false, false , false , false , false ];
  final List<String> _title = ["Laundry","Laundry","Laundry","Laundry","Laundry","Laundry",];

  Widget checkboxList() {
    return Container(
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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor:const Color(0xfff5f9ff),
          appBar: AppBar(
            title: const Text("Room Addition",
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
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextField(hintText: 'Room Name'),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: const Color(0xffacacac), width: 1, ),
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.only(left: 19, right: 150, top: 15,bottom: 20 ),
                      child: TextFormField(decoration: const InputDecoration(
                          hintText: "Additional Details",
                          hintStyle: TextStyle(
                            color: Color(0xffa4a4a4),
                            fontSize: 16,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500,
                          ),
                          border: InputBorder.none),
                        maxLines: 5,)
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20,left: 15),
                    child: const Text(
                      "Amenities",
                      style: TextStyle(
                        color: Color(0xff090a0a),
                        fontSize: 24,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  checkboxList(),
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () => () {},
                      child: const Text(
                        'View More',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                        ),)
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 100,
                        width: MediaQuery. of(context). size. width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: const Color(0xffacacac), width: 1, ),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 24,
                                child: Image.asset("assets/images/BandWimagelogo.png")),
                            const Text(
                              "Upload Room Image",
                              style: TextStyle(
                                color: Color(0xff5a5a5a),
                                fontSize: 18,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        )
                    ),
                  ),
                  CustomTextField(hintText: 'Base Price',suffixText: "Per Night"),
                  CustomButton(text: 'Add Room', onClick: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RoomsAvailableScreen()),
                    );
                  })
                ],
              ),
            ),
          )
      ),
    );
  }
}
