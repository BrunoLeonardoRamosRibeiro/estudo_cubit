import 'package:appwithcubit/models/usuario.dart';
import 'package:appwithcubit/services/usuario_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Pagina1Page extends StatefulWidget {
  const Pagina1Page({super.key});

  @override
  State<Pagina1Page> createState() => _Pagina1PageState();
}

class _Pagina1PageState extends State<Pagina1Page> {
  @override
  Widget build(BuildContext context) {
    final usuarioService = Provider.of<UsuarioService>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Página 1 Page"),
        actions: [
          IconButton(
            onPressed: () {
              // remover
              // final usuarioService = Provider.of<UsuarioService>(context, listen: false);
              usuarioService.delUser();
            },
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
      body: usuarioService.userExists
          ? SingleChildScrollView(
              child: UserInformation(
                usuario: usuarioService.usuario,
              ),
            )
          : const Center(child: Text('Usuário não existe!')),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.accessibility_new),
          onPressed: () {
            Navigator.pushNamed(context, "pagina2");
          }),
    );
  }
}

class UserInformation extends StatelessWidget {
  final Usuario usuario;
  const UserInformation({
    super.key,
    required this.usuario,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Geral', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Divider(),
          ListTile(title: Text('Nome: ${usuario.nome}')),
          ListTile(title: Text('Idade: ${usuario.idade}')),
          const Text('Profissões', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Divider(),
          usuario.profissoes == null
              ? Container()
              : ListView.builder(
                  itemCount: usuario.profissoes!.length,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemBuilder: (_, index) => ListTile(
                    title: Text(usuario.profissoes![index]),
                  ),
                ),
        ],
      ),
    );
  }
}
