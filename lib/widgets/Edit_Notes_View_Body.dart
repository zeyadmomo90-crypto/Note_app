import 'package:flutter/material.dart';
import 'package:test/widgets/Custom_App_Bar.dart';
import 'package:test/widgets/Custom_Text_filed.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(height: 50),
          CustomAppBar(Title: 'Add Note', Icon: Icons.check),
          SizedBox(height: 50),
          CustomTextFiled(HintText: 'Title'),
          SizedBox(height: 16),
          CustomTextFiled(HintText: 'content', maxlines: 5),
        ],
      ),
    );
  }
}
