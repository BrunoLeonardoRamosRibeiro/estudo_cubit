import 'package:appwithcubit/pages/pagina1_page.dart';
import 'package:appwithcubit/pages/pagina2_page.dart';
import 'package:appwithcubit/services/usuario_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UsuarioService(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: false,
        ),
        initialRoute: 'pagina1',
        routes: {"pagina1": (_) => const Pagina1Page(), "pagina2": (_) => const Pagina2Page()},
      ),
    );
  }
}
