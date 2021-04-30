class PessoaA {
  String _nome;
  int _idade;

  get nome => this._nome;

  set nome(value) => this._nome = value;

  get idade => this._idade;

  set idade(value) => this._idade = value;

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
