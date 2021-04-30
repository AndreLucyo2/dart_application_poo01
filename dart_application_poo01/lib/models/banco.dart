import 'dart:io';

class Banco {
  String _nome;
  num cpf;
  num _senha;
  num _saldo = 0; //inicia com zero

  get nome => this._nome;

  set nome(value) => this._nome = value;

  num get getCpf => this.cpf;

  set setCpf(num cpf) => this.cpf = cpf;

  get senha => this._senha;

  set senha(value) => this._senha = value;

  get saldo => this._saldo;

  set saldo(value) => this._saldo += value; //soma ao valor informado

  void criarConta() {
    print('---Informe o nome: ');
    nome = stdin.readLineSync();

    //print('---Informe o CPF: ');
    //cpf = int.parse(stdin.readLineSync());

    print('---Informe sua senha: ');
    senha = int.parse(stdin.readLineSync());

    print('Usuario cadastrado com sucesso!');
    stdout.writeln('--------------------------------------------');
    stdin.readLineSync();
  }

  void depositar() {
    print('---Informe o valor para ser depositado: ');
    saldo = int.parse(stdin.readLineSync());
  }

  void sacar() {
    print('---Informe o valor para ser sacado: ');
    num saque = num.parse(stdin.readLineSync());

    if (saldo < saque || saldo <= 0) {
      print('Saldo insuficiente!');
      stdin.readLineSync();
    } else {
      saldo = -saque;
    }
  }
}
