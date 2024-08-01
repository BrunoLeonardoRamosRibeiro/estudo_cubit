class Usuario {
  String nome;
  int idade;
  List<String>? profissoes;

  Usuario({
    required this.nome,
    required this.idade,
    this.profissoes,
  }) {
    profissoes ??= [];
  }
}
