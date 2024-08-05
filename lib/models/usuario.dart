class Usuario {
  String nome;
  int idade;
  List<String> profissoes;

  Usuario({
    required this.nome,
    required this.idade,
    required this.profissoes,
  });

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