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
      body: const Center(
        child: Text("Página 2"),
      ),
    );
  }
}
