import 'package:appwithcubit/bloc/user/user_cubit.dart';
import 'package:appwithcubit/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({super.key});

  @override
  Widget build(BuildContext context) {
    //
    final userCubit = context.read<UserCubit>();
    //
    return Scaffold(
      appBar: AppBar(
        title: const Text("Página 2 Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                //
                userCubit.setUser(Usuario(nome: 'Bruno', idade: 47));
              },
              child: const Text('Criar Usuário', style: TextStyle(color: Colors.white)),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                //
                userCubit.updateAge(40);
              },
              child: const Text('Trocar Idade', style: TextStyle(color: Colors.white)),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                //
                userCubit.addProfession('Dev Flutter');
              },
              child: const Text('Adicionar Profissão', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
