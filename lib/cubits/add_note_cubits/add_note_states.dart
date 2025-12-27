abstract class AddNotesStates {}

class InitAddNoteState extends AddNotesStates {}

class LoadingAddNoteState extends AddNotesStates {}

class LoadedAddNoteState extends AddNotesStates {}

class ErrorAddNoteState extends AddNotesStates {
  final String errormessage;
  ErrorAddNoteState(this.errormessage);
}
