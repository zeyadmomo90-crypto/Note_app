import 'package:flutter/material.dart';
import 'package:test/widgets/custom_text_filed.dart';
import 'package:test/widgets/custome_button.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(child: Addnoteform()),
    );
  }
}

class Addnoteform extends StatefulWidget {
  const Addnoteform({super.key});

  @override
  State<Addnoteform> createState() => _AddnoteformState();
}

class _AddnoteformState extends State<Addnoteform> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formkey = GlobalKey();
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formkey,
      child: Column(
        children: [
          SizedBox(height: 32),
          CustomTextFiled(
            hintText: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 16),
          CustomTextFiled(
            hintText: 'content',
            maxlines: 5,
            onSaved: (value) {
              subtitle = value;
            },
          ),
          SizedBox(height: 32),
          Custombutton(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
