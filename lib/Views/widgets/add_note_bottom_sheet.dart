import 'package:flutter/material.dart';
import 'package:test/Constance.dart';
import 'package:test/Views/widgets/Custom_Text_filed.dart';
import 'package:test/Views/widgets/custome_button.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            CustomTextFiled(HintText: 'Title'),
            SizedBox(height: 16),
            CustomTextFiled(HintText: 'content', maxlines: 5),
            SizedBox(height: 32),
            Custombutton(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
