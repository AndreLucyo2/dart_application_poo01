import 'pessoa.dart';

class Funcionario extends Pessoa {
  var pessoa = Pessoa();
  String dataEntrada;
  double salario;

  Funcionario({this.dataEntrada, this.salario, this.pessoa});
}
