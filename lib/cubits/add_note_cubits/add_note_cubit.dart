import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:test/cubits/add_note_cubits/add_note_states.dart';
import 'package:test/models/Note_model.dart';
import 'package:test/widgets/constance.dart';

class AddNoteCubit extends Cubit<AddNotesStates> {
  AddNoteCubit() : super(InitAddNoteState());

  void addNote(NoteModel notemodel) async {
    emit(LoadingAddNoteState());
    try {
      var notebox = Hive.box<NoteModel>(kNotesBox);
      emit(LoadedAddNoteState());
      await notebox.add(notemodel);
    } catch (e) {
      emit(ErrorAddNoteState(e.toString()));
    }
  }
}
