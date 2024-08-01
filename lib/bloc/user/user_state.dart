part of 'user_cubit.dart';

sealed class UserState {}

class InitialUser extends UserState {
  final userExists = false;
}

class ActiveUser extends UserState {
  final Usuario usuario;

  final userExists = true;

  ActiveUser(this.usuario);
}
