import 'package:appwithcubit/models/usuario.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part "user_state.dart";

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(InitialUser());

  void setUser(Usuario user) {
    emit(ActiveUser(user));
  }

  void updateAge(int age) {
    final currentState = state;
    if (currentState is ActiveUser) {
      var user = currentState.usuario.copyWith(idade: 40);

      emit(ActiveUser(user));
    }
  }

  void addProfession(String value) {
    final currentState = state;

    if (currentState is ActiveUser) {
      List<String> professionList = currentState.usuario.profissoes ?? <String>[];
      professionList.add(value);
      var user = currentState.usuario.copyWith(profissoes: professionList);

      emit(ActiveUser(user));
    }
  }

  void delUser (){
    emit(InitialUser());
  }
}
