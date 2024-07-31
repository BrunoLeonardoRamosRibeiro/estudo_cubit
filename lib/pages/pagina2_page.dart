import 'package:appwithcubit/models/usuario.dart';
import 'package:appwithcubit/services/usuario_service.dart';
import 'package:flutter/material.dart';

class Pagina2Page extends StatefulWidget {
  const Pagina2Page({super.key});

  @override
  State<Pagina2Page> createState() => _Pagina2PageState();
}

class _Pagina2PageState extends State<Pagina2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
            stream: usuarioService.usuarioStream,
            builder: (context, snapshot) {
              return snapshot.hasData ? Text("Nome: ${snapshot.data!.nome}") : const Text("Página 2 Page");
            }),
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
                final user =
                    Usuario(nome: 'Bruno Leonardo', idade: 48, profissoes: ['Desenvolvedor']);
                usuarioService.loadUser(user);
              },
              child: const Text('Criar Usuário', style: TextStyle(color: Colors.white)),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                //
                usuarioService.updateAge(47);
              },
              child: const Text('Trocar Idade', style: TextStyle(color: Colors.white)),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                //
              },
              child: const Text('Adicionar Profissão', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
