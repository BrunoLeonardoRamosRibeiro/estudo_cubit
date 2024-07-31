import 'dart:async';

import 'package:appwithcubit/models/usuario.dart';

class _UsuarioService {
  Usuario? _usuario;

  final StreamController<Usuario> _usuarioStreamController = StreamController<Usuario>();

  Stream<Usuario> get usuarioStream => _usuarioStreamController.stream;

  Usuario? get usuario => _usuario;
  bool get userExists => (_usuario != null) ? true : false;

  void loadUser(Usuario user) {
    _usuario = user;
    _usuarioStreamController.add(user);
  }

  void updadeAge(int age) {
    _usuario!.idade = age;
    _usuarioStreamController.add(_usuario!);
  }
}

final usuarioService = _UsuarioService();