import 'package:dart_application_poo/dart_application_poo.dart'
    as dart_application_poo;
import 'dart:io';
import 'modelo/banco.dart';

//Instancia o banco:
Banco c1 = Banco();

void main(List<String> args) {
  bool comando = true;
  while (comando) {
    funcMenuPrincipal();
  }
}

funcMenuPrincipal() {
  //Limpa a tela:
  print("\x1B[2J\x1B[0;0H");
  print('---MENU PRINCIPAL ---');
  print('---1 Cadastrar usuario');
  print('---2 Acessar Conta');

  int opc = int.parse(stdin.readLineSync());

  switch (opc) {
    case 1:
      c1.criarConta();
      break;
    case 2:
      funcValidaUser();
      break;
    default:
      print('Opção inválida!');
  }
}

funcValidaUser() {
  //Limpa a tela:
  print("\x1B[2J\x1B[0;0H");
  print('---VALIDAR ACESSO ----');

  print('---Informe seu nome:');
  String nome = stdin.readLineSync();

  print('---Informe sua senha:');
  num senha = num.parse(stdin.readLineSync());

  if (nome == c1.nome && senha == c1.senha) {
    funcConta();
  } else {
    print('Nome ou senha inválido!');
    return;
  }
}

funcConta() {
  //Limpa a tela:
  print("\x1B[2J\x1B[0;0H");
  print('--- BEM VINDO ----');
  print('---1 Verificar saldo');
  print('---2 Depositar');
  print('---3 Sacar');
  int opc = int.parse(stdin.readLineSync());

  switch (opc) {
    case 1:
      print('Seu saldo é ${c1.saldo}');
      break;
    case 2:
      c1.depositar();
      break;
    case 3:
      c1.sacar();
      break;
    default:
      print('Opção inválida!');
  }
}
