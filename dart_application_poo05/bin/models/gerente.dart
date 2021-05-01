import 'funcionario.dart';
import 'pessoa.dart';

class Gerente {
  var data = DateTime.now();
  var pessoa = Pessoa();
  var funcionario = Funcionario();

  Gerente({this.pessoa, this.funcionario});

  void marcarReunicao() {
    print('O Gerente ${pessoa.nome} marcou uma reunião na data ${data}.');
  }

  void realizarContracao() {
    print('O Gerente ${pessoa.nome} contratou um novo funcionario.');
  }
}
