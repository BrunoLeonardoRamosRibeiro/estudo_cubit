import 'package:appwithcubit/bloc/user/user_bloc.dart';
import 'package:appwithcubit/core/navigators.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final userBloc =
    BlocProvider.of<UserBloc>(NavigatorCustom.navigatorKey.currentContext!, listen: false);

 // UserBloc userBloc() => BlocProvider.of<UserBloc>(NavigatorCustom.navigatorKey.currentContext!);
 //
 // static userBloc = userBloc();