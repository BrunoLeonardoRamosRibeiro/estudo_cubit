import 'package:appwithcubit/models/usuario.dart';
import 'package:appwithcubit/services/usuario_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({super.key});

  @override
  Widget build(BuildContext context) {
    final usuarioService = Provider.of<UsuarioService>(context);

    return Scaffold(
      appBar: AppBar(
        title: usuarioService.userExists
            ? Text("Nome: ${usuarioService.usuario.nome}")
            : Text("Página 2 Page"),
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
                // final usuarioService = Provider.of<UsuarioService>(context, listen: false);
                usuarioService.usuario = Usuario(nome: 'Bruno Leonardo', idade: 47);
              },
              child: const Text('Criar Usuário', style: TextStyle(color: Colors.white)),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                //
                usuarioService.updateAge(40);
              },
              child: const Text('Trocar Idade', style: TextStyle(color: Colors.white)),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                //

                usuarioService.addProfession("Dev Flutter");
                usuarioService.addProfession("Dev Fullstack");
              },
              child: const Text('Adicionar Profissão', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
