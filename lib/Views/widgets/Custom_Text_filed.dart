import 'package:flutter/material.dart';
import 'package:test/Constance.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.HintText, this.maxlines = 1});
  final String HintText;
  final int maxlines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxlines,
      cursorColor: Kprimarycolor,
      decoration: InputDecoration(
        hintText: HintText,
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
