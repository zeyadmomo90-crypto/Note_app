import 'package:flutter/material.dart';
import 'package:test/widgets/Constance.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    super.key,
    required this.hintText,
    this.maxlines = 1,
    this.onSaved,
  });
  final String hintText;
  final int maxlines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      onSaved: onSaved,
      maxLines: maxlines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        border: buildborder(),
        enabledBorder: buildborder(),
        focusedBorder: buildborder(Color: kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildborder({Color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Color ?? Colors.white),
    );
  }
}
