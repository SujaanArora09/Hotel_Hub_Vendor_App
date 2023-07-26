import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class CustomDropdownBooking extends StatefulWidget {
  final List list;
  final double height;
  final TextStyle? textStyle;
  final String hint;
  late  String? value;
  final double? width;
  final Color? dropdownColor;
  final Color? bcolor;
  final double? iconSize;
  final double? radius;
  final double? hp;
  final bool? icon;
  final int? whichIcon;


  CustomDropdownBooking(
      {super.key,
        this.textStyle,
        this.hp,
        this.radius,
        this.icon,
        this.bcolor,
        this.iconSize,
        this.dropdownColor,
        required this.list,
        required this.height,
        required this.hint,
        this.width,
        this.value, this.whichIcon});

  @override
  State<CustomDropdownBooking> createState() => _CustomDropdownBookingState();
}

class _CustomDropdownBookingState extends State<CustomDropdownBooking> {
  String selectData = "";

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 6),
        height: widget.height,
        width: widget.width ?? width(context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(62),
          border: Border.all(color: const Color(0xffa2a2a2), width: 1, ),
          color: const Color(0x7fffffff),
        ),
       // padding: EdgeInsets.symmetric(horizontal: 5, vertical: 6),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: widget.hp ?? 15),
          child: SizedBox(
            height: height(context) * 0.04,
            child: Row(
              children: [
                Expanded(
                  child: DropdownButton(
                    icon: SizedBox.shrink(),
                      hint: Text(
                        selectData.isEmpty ? "${widget.hint}" : selectData,
                        style: widget.textStyle ??
                            const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                      ),
                      dropdownColor: white,
                      underline: SizedBox(),
                      isExpanded: true,
                      items: widget.list.map((e) {
                        return DropdownMenuItem(
                            value: e.toString(), child: Text(e.toString()));
                      }).toList(),
                      onChanged: (value) {
                        setState(() {

                          selectData = value!;

                        });
                        widget.value = selectData ;
                      }),
                ),
                widget.icon == true
                    ? Icon(
                  widget.whichIcon == 1 ?
                      Icons.filter_list : Icons.filter_alt_outlined,
                      size: 15,
                      color: darkGray,
                    )
                    : addHorizontalySpace(0),
              ],
            ),
          ),
        ));

  }
}