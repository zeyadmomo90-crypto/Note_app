import 'package:flutter/material.dart';
import 'package:test/Views/widgets/Custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.Title, required this.Icon});
  final String Title;
  final IconData Icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(Title, style: TextStyle(fontSize: 28)),
        const Spacer(),
        CustomIcon(icon: Icon),
      ],
    );
  }
}
