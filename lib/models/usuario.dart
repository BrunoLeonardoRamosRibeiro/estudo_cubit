class Usuario {
  final String nome;
  final int idade;
  final List<String>? profissoes;

  Usuario({
    required this.nome,
    required this.idade,
    this.profissoes,
  }) {
    if (profissoes == null) {
      copyWith(profissoes: <String>[]);
    }
  }

  Usuario copyWith({
    String? nome,
    int? idade,
    List<String>? profissoes,
  }) {
    return Usuario(
      nome: nome ?? this.nome,
      idade: idade ?? this.idade,
      profissoes: profissoes ?? this.profissoes,
    );
  }
}
