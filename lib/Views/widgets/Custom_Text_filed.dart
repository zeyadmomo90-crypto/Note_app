import 'package:flutter/material.dart';
import 'package:test/Constance.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Kprimarycolor,
      decoration: InputDecoration(
        hintText: 'Title',
        border: BuildBorder(),
        enabledBorder: BuildBorder(),
        focusedBorder: BuildBorder(Color: Kprimarycolor),
      ),
    );
  }

  OutlineInputBorder BuildBorder({Color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Color ?? Colors.white),
    );
  }
}
