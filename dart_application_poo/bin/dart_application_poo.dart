import 'package:dart_application_poo/dart_application_poo.dart'
    as dart_application_poo;
import 'dart:io';
import 'modelo/banco.dart';

//Instancia o banco:
Banco c1 = Banco();
bool cmdMnuPrinc = true;

void main(List<String> args) {
  do {
    funcMenuPrincipal();
  } while (cmdMnuPrinc);
}

funcMenuPrincipal() {
  //Limpa a tela do console:
  //print("\x1B[2J\x1B[0;0H");
  print('--- MENU PRINCIPAL ---');
  print('--- 1 Cadastrar usuario');
  print('--- 2 Acessar Conta');
  print('--- 3 Para Sair!');

  int opc = int.parse(stdin.readLineSync());

  switch (opc) {
    case 1:
      c1.criarConta();
      break;
    case 2:
      funcValidaUser();
      break;
    case 3:
      print('Obrigado até a proxima!');
      stdin.readLineSync();
      cmdMnuPrinc = false;
      break;
    default:
      print('Opção inválida!');
      stdin.readLineSync();
  }
}

funcValidaUser() {
  //Limpa a tela do console:
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
    stdin.readLineSync();
    return;
  }
}

funcConta() {
  bool cmdMnu = true;

  do {
    //Limpa a tela:
    print("\x1B[2J\x1B[0;0H");

    print('--- OPÇÕES DA CONTA ----');
    print('---1 Verificar saldo');
    print('---2 Depositar');
    print('---3 Sacar');
    print('---4 Menu anterior');

    int opc = int.parse(stdin.readLineSync());

    switch (opc) {
      case 1:
        print('Seu saldo é ${c1.saldo}');
        stdin.readLineSync();
        break;
      case 2:
        c1.depositar();
        break;
      case 3:
        c1.sacar();
        break;
      case 4:
        cmdMnu = false;
        break;
      default:
        print('Opção inválida!');
        stdin.readLineSync();
    }
  } while (cmdMnu);
}
