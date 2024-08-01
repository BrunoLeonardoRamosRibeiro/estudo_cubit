import 'package:appwithcubit/models/usuario.dart';
import 'package:flutter/material.dart';

class UsuarioService with ChangeNotifier {
  Usuario? _usuario;

  Usuario get usuario => _usuario!;

  bool get userExists => (_usuario != null) ? true : false;

  set usuario(Usuario value) {
    _usuario = value;
    notifyListeners();
  }
}
