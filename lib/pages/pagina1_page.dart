import 'package:appwithcubit/bloc/user/user_cubit.dart';
import 'package:appwithcubit/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Pagina1Page extends StatefulWidget {
  const Pagina1Page({super.key});

  @override
  State<Pagina1Page> createState() => _Pagina1PageState();
}

class _Pagina1PageState extends State<Pagina1Page> {
  late var _userCubit;

  @override
  void initState() {
    super.initState();

    _userCubit = context.read<UserCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Página 1 Page"),
        actions: [
          IconButton(
              onPressed: () {
                _userCubit.delUser();
              },
              icon: const Icon(Icons.delete)),
        ],
      ),
      body: const BodyScaffold(),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.accessibility_new),
          onPressed: () {
            Navigator.pushNamed(context, "pagina2");
          }),
    );
  }
}

class BodyScaffold extends StatelessWidget {
  const BodyScaffold({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (_, state) {
        switch (state) {
          case InitialUser _:
            return const Center(
              child: Text('Sem informações do usuário!'),
            );

          case ActiveUser _:
            return UserInformation(user: state.usuario);

          default:
            return const Center(child: Text('Sem estado conhecido'));
        }
      },
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
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Geral', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Divider(),
          ListTile(title: Text('Nome: ${user.nome}')),
          ListTile(title: Text('Idade: ${user.idade}')),
          const Text('Profissões', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Divider(),
          user.profissoes == null
              ? Container()
              : ListView.builder(
                  itemCount: user.profissoes!.length,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemBuilder: (_, index) => ListTile(
                    title: Text(user.profissoes![index]),
                  ),
                ),
        ],
      ),
    );
  }
}
