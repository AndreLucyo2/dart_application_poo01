class PessoaA {
  String _nome;
  int _idade;

  String get nome => _nome;

  set nome(value) => _nome = value;

  int get idade => _idade;

  set idade(value) => _idade = value;

  //Estudo de construtores Dart.
  PessoaA({String nome, int idade}) {
    _nome = nome;
    _idade = idade;
  }
}

//Estudo de construtores Dart.
class PessoaB {
  String nome;
  int idade;

  //Estudo de construtores Dart.
  PessoaB({this.nome, this.idade});
}
