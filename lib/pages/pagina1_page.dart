import 'package:appwithcubit/bloc/user/user_bloc.dart';
import 'package:appwithcubit/core/utils.dart';
import 'package:appwithcubit/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Pagina1Page extends StatefulWidget {
  const Pagina1Page({super.key});

  @override
  State<Pagina1Page> createState() => _Pagina1PageState();
}

class _Pagina1PageState extends State<Pagina1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Página 1 Page"),
        actions: [
          IconButton(onPressed: (){
            //
            userBloc.add(DeleteUser());
          }, icon: const Icon(Icons.delete)),
        ],
      ),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (_, state) {
          return state.existUser
              ? SingleChildScrollView(child: UserInformation(user: state.user!))
              : const Center(
                  child: Text('Sem usuário selecionado!'),
                );
        },
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.accessibility_new),
          onPressed: () {
            Navigator.pushNamed(context, "pagina2");
          }),
    );
  }
}

class UserInformation extends StatelessWidget {
  final Usuario user;
  const UserInformation({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Geral', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const Divider(),
        ListTile(title: Text('Nome:  ${user.nome}')),
        ListTile(title: Text('Idade: ${user.idade}')),
        const Text('Profissões', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const Divider(),
        ListView.builder(
          itemCount: user.profissoes.length,
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          itemBuilder: (_, index) => ListTile(
            title: Text(user.profissoes![index]),
          ),
        ),
      ],
    );
  }
}
