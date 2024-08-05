import 'package:appwithcubit/models/usuario.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserInitialState()) {
    on<ActivateUser>((event, emit) {
      debugPrint('ActivateUser Called');
      emit(UserSetState(event.user));
    });

    on<ChangeUserAge>((event, emit) {
      debugPrint('ChangeUserAge Called');
      if (!state.existUser) return;

      emit(UserSetState( state.user!.copyWith(idade: event.age)));
    });

    on<DeleteUser>((event, emit) {
      debugPrint('DeleteUser Called');
      emit(const UserInitialState());
    });

    on<AddProfession>((event, emit) {
      debugPrint('AddProfession Called');
      if (!state.existUser) return;

      var list = state.user!.profissoes ?? [];

      list.add(event.profession);

      emit(UserSetState( state.user!.copyWith(profissoes: list)));
    });
  }
}
