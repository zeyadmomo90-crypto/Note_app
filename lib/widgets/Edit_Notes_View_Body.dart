import 'package:flutter/material.dart';
import 'package:test/widgets/custom_app_bar.dart';
import 'package:test/widgets/custom_text_filed.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(height: 50),
          CustomAppBar(title: 'Add Note', icon: Icons.check),
          SizedBox(height: 50),
          CustomTextFiled(hintText: 'Title'),
          SizedBox(height: 16),
          CustomTextFiled(hintText: 'content', maxlines: 5),
        ],
      ),
    );
  }
}
