import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/cubits/add_note_cubits/add_note_states.dart';

class AddNoteCubit extends Cubit<AddNotesStates> {
  AddNoteCubit() : super(InitAddNoteState());

  addNote(NoteModel) {}
}
