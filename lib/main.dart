import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:test/Views/notes_view.dart';
import 'package:test/models/Note_model.dart';
import 'package:test/widgets/constance.dart';

void main() async {
  WidgetsFlutterBinding();
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotesView(),
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
    );
  }
}
