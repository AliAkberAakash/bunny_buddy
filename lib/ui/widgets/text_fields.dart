import 'package:bunny_buddy/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UnderlinedTextField extends StatelessWidget {

  final TextEditingController controller;
  final String hintText;
  final bool obsecure;

  const UnderlinedTextField({
    this.controller,
    this.hintText = "",
    this.obsecure = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obsecure,
      style: TextStyle(
          color: primary_dark,
          fontSize: 14.ssp,
          fontWeight: FontWeight.normal
      ),
      cursorColor: Colors.white,
      decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: light_grey),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: light_grey),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: light_grey),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
              color: light_grey,
              fontSize: 14.ssp,
          )
      ),
    );
  }
}
