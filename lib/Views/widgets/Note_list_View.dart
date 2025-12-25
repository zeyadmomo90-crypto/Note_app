import 'package:flutter/material.dart';
import 'package:test/Views/widgets/Custom_Note_Item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  }); // لازم دي تبقي const لو هتشيله يبقي تقلبها statefull

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.all(0),
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 4),
            child: NoteItem(),
          );
        },
      ),
    );
  }
}
