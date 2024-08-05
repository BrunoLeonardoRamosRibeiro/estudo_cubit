part of 'user_bloc.dart';

@immutable
sealed class UserEvent {}

class ActivateUser extends UserEvent {
  final Usuario user;

  ActivateUser(this.user);
}
