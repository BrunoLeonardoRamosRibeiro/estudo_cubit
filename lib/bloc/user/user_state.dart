part of 'user_bloc.dart';

@immutable
sealed class UserState {
  final bool existUser;
  final Usuario? user;

  const UserState({this.existUser = false, this.user});
}

final class UserInitialState extends UserState {
  const UserInitialState() : super(existUser: false, user: null);
}
