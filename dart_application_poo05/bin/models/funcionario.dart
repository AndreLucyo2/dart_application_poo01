import 'pessoa.dart';

class Funcionario extends Pessoa {
  var pessoa = Pessoa();
  String dataEntrada;
  String cargo;
  double salario;

  Funcionario({this.dataEntrada, this.cargo, this.salario, this.pessoa});
}
