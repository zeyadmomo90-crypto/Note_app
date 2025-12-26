import 'package:flutter/material.dart';
import 'package:test/Views/widgets/Custom_Text_filed.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(children: [SizedBox(height: 32), CustomTextFiled()]),
    );
  }
}
