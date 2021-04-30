import 'package:dart_application_poo03/dart_application_poo03.dart'
    as dart_application_poo03;

import 'models/pessoa.dart';

void main(List<String> arguments) {
  var pessoa1 = PessoaA(nome: 'Andre', idade: 37);
  var pessoa2 = PessoaB(nome: 'Lucas', idade: 25);

  print(
      'O nome da pessoa 1 é ${pessoa1.nome} e sua idade de ${pessoa1.idade} anos.');

  print(
      'O nome da pessoa 2 é ${pessoa2.nome} e sua idade de ${pessoa2.idade} anos.');
}
