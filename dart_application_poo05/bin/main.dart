import 'package:dart_application_poo05/dart_application_poo05.dart'
    as dart_application_poo05;

import 'dart:io';

import 'models/funcionario.dart';
import 'models/gerente.dart';
import 'models/pessoa.dart';
import 'models/presidente.dart';

void main(List<String> arguments) {
  var funcionario1 = Funcionario(
    pessoa: Pessoa(nome: 'Andre', sobreNome: 'Lucio'),
    dataEntrada: '02/02/2005',
    salario: 15000,
  );

  var gerente1 = Gerente(
    pessoa: Pessoa(nome: 'Pedro', sobreNome: 'Cavalho'),
  );

  var presidente1 =
      Presidente(pessoa: Pessoa(nome: 'Lucas', sobreNome: 'Silva'));

  print('O funcionario se chama ${funcionario1.pessoa.nome}');

  print('O gerente se chama ${gerente1.pessoa.nome}');
  gerente1.marcarReunicao();
  gerente1.realizarContracao();

  print('O presidente se chama ${presidente1.pessoa.nome}');
  presidente1.fazerInvestimento();
  presidente1.venderAcoes();
}
