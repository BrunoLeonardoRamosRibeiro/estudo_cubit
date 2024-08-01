import 'package:appwithcubit/bloc/user/user_cubit.dart';
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
      ),
      body: BlocBuilder<UserCubit, UserState>(
        builder: (_, state) {
          if (state is UserInitial) {
            return const Center(
              child: Text('Sem informações do usuário!'),
            );
          } else {
            return const UserInformation();
          }
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
  const UserInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(20.0),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Geral', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Divider(),
          ListTile(title: Text('Nome: ')),
          ListTile(title: Text('Idade: ')),
          Text('Profissões', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Divider(),
          ListTile(title: Text('Profissão 1: ')),
          ListTile(title: Text('Profissão 2: ')),
          ListTile(title: Text('Profissão 3: ')),
        ],
      ),
    );
  }
}
