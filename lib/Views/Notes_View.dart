import 'package:flutter/material.dart';
import 'package:test/Views/widgets/Notes_View_Body.dart';
import 'package:test/Views/widgets/add_note_bottom_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(16),
            ),
            context: context,
            builder: (context) {
              return AddNoteButtomSheet();
            },
          );
        },
        child: Icon(Icons.add),
      ),
      body: NotesViewBody(),
    );
  }
}
