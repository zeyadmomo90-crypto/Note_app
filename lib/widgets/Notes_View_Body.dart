import 'package:flutter/material.dart';
import 'package:test/widgets/Custom_App_Bar.dart';
import 'package:test/widgets/Note_list_View.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: const Column(
        children: [
          SizedBox(height: 60),
          CustomAppBar(Title: 'Notes', Icon: Icons.search),

          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
