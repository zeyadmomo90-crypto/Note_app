import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:test/cubits/add_note_cubits/add_note_cubit.dart';
import 'package:test/cubits/add_note_cubits/add_note_states.dart';
import 'package:test/widgets/add_noteform.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNotesStates>(
          listener: (context, state) {
            if (state is ErrorAddNoteState) {
              print('Failed ${state.errormessage}');
            }

            if (state is LoadedAddNoteState) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is LoadingAddNoteState ? true : false,
              child: const Addnoteform(),
            );
          },
        ),
      ),
    );
  }
}
