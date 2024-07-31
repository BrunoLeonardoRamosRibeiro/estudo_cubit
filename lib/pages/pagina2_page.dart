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
        title: const Text("Página 2 Page"),
      ),
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                //
              },
              child: const Text('Criar Usuário', style: TextStyle(color: Colors.white)),
            ),

            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                //
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
