import 'dart:io';

import 'package:dart_application_poo01/models/banco.dart';

//Instancia o banco:
Banco c1 = Banco();
bool cmdMnuPrinc = true;

void main(List<String> args) {
  do {
    funcMenuPrincipal();
  } while (cmdMnuPrinc);
}

void funcMenuPrincipal() {
  //Limpa a tela do console:
  //print("\x1B[2J\x1B[0;0H");
  print('--- MENU PRINCIPAL ---');
  print('--- 1 Cadastrar usuario');
  print('--- 2 Acessar Conta');
  print('--- 3 Para Sair!');

  var opc = int.parse(stdin.readLineSync());

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

void funcValidaUser() {
  //Limpa a tela do console:
  print('\x1B[2J\x1B[0;0H');
  print('---VALIDAR ACESSO ----');
  print('---Informe seu nome:');
  var nome = stdin.readLineSync();

  print('---Informe sua senha:');
  var senha = num.parse(stdin.readLineSync());

  if (nome == c1.nome && senha == c1.senha) {
    funcConta();
  } else {
    print('Nome ou senha inválido!');
    stdin.readLineSync();
    return;
  }
}

void funcConta() {
  var cmdMnu = true;

  do {
    //Limpa a tela:
    print('\x1B[2J\x1B[0;0H');

    print('--- OPÇÕES DA CONTA ----');
    print('---1 Verificar saldo');
    print('---2 Depositar');
    print('---3 Sacar');
    print('---4 Menu anterior');

    var opc = int.parse(stdin.readLineSync());

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
