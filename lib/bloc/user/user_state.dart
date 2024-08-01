part of 'user_cubit.dart';

sealed class UserState {}

class UserInitial extends UserState {
  final userExists = false;
}

