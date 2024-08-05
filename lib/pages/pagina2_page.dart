import 'package:appwithcubit/bloc/user/user_bloc.dart';
import 'package:appwithcubit/core/utils.dart';
import 'package:appwithcubit/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        child: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MaterialButton(
                  color: Colors.blue,
                  onPressed: () {
                    //
                    var newUser = Usuario(
                        nome: 'Bruno Leonardo', idade: 48, profissoes: ['Dev Flutter']);
                    // BlocProvider.of<UserBloc>(context, listen: false)
                    userBloc
                        .add(ActivateUser(newUser));
                  },
                  child: const Text('Criar Usuário', style: TextStyle(color: Colors.white)),
                ),
                Visibility(
                  visible: state.existUser,
                  child: MaterialButton(
                    color: Colors.blue,
                    onPressed: () {
                      //
                      userBloc
                          .add(ChangeUserAge(50));
                    },
                    child: const Text('Trocar Idade', style: TextStyle(color: Colors.white)),
                  ),
                ),
                Visibility(
                  visible: state.existUser,
                  child: MaterialButton(
                    color: Colors.blue,
                    onPressed: () {
                      //
                      userBloc
                          .add(AddProfession('Dev mobile Flutter'));
                    },
                    child: const Text('Adicionar Profissão', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
