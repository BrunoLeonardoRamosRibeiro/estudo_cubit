import 'package:appwithcubit/bloc/user/user_bloc.dart';
import 'package:appwithcubit/core/navigators.dart';
import 'package:appwithcubit/pages/pagina1_page.dart';
import 'package:appwithcubit/pages/pagina2_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => UserBloc()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: false,
        ),
        navigatorKey: NavigatorCustom.navigatorKey,
        initialRoute: 'pagina1',
        routes: {"pagina1": (_) => const Pagina1Page(), "pagina2": (_) => const Pagina2Page()},
      ),
    );
  }
}
