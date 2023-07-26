import 'package:flutter/material.dart';

import '../utils/constants.dart';



class CustomTextField extends StatefulWidget {


  final String? Function(String?)? validator;
  final String hintText;
  final String? suffixText;
  final bool? suffix;
  final TextInputType? textType;
  final bool? autoValidate;
  final bool? enabled;
  final int? maxLength;
  final double? height;
  // final double? height;
  final TextEditingController? controller;

  var onchanged;




  CustomTextField(
      {super.key,
        required this.hintText,
        this.onchanged,
        this.suffix,
        this.validator,
        // this.height,
        this.maxLength,
        this.textType,
        this.autoValidate,
        this.controller,
        this.enabled,
        this.height,
        this.suffixText,});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: widget.height ?? 50,
        child: TextFormField(
          enabled: widget.enabled,
          onChanged: widget.onchanged,
          controller: widget.controller,
          keyboardType: widget.textType ?? TextInputType.text,
          validator: widget.validator,
          cursorColor: black,
          style: const TextStyle(
            color: Color(0xffa4a4a4),
            fontSize: 16,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w500,
          ),
          maxLength: widget.maxLength,
          readOnly: widget.suffix ?? false,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              filled: true,
              suffixText: widget.suffixText,
              suffixStyle: const TextStyle(
                color: Color(0xff484848),
                fontSize: 18,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w500,
              ),
              fillColor: Colors.white,
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: normalGray),
                  borderRadius: BorderRadius.circular(8.5)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffacacac)),
                  borderRadius: BorderRadius.circular(8.5)),
              errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: red),
                  borderRadius: BorderRadius.circular(8.5)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffacacac)),
                  borderRadius: BorderRadius.circular(8.5)),
              hintText: widget.hintText,
              hintStyle: bodyText16normal(color: darkGray)),
        ),
      ),
    );
  }
}