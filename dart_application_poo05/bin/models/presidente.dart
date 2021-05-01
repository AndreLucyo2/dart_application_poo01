import 'funcionario.dart';
import 'pessoa.dart';

class Presidente {
  var pessoa = Pessoa();
  var funcionario = Funcionario();

  Presidente({this.pessoa, this.funcionario});

  void fazerInvestimento() {
    print(
        'Nosso presidente ${pessoa.nome} fez um investimento em nossa empresa!');
  }

  void venderAcoes() {
    print('Nosso presidente ${pessoa.nome} esta comprando ações!');
  }
}
