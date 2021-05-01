import 'models/funcionario.dart';
import 'models/gerente.dart';
import 'models/pessoa.dart';
import 'models/presidente.dart';

void main(List<String> arguments) {
  //Instacia funcionários:
  var funcionario1 = Funcionario(
    pessoa: Pessoa(nome: 'Andre', sobreNome: 'Lucio'),
    dataEntrada: '02/02/2005',
    cargo: 'Atendente',
    salario: 15000,
  );

  //instacia Gerentes:
  var gerente1 = Gerente(
    pessoa: Pessoa(nome: 'Pedro', sobreNome: 'Cavalho'),
  );

//instacia presidente:
  var presidente1 =
      Presidente(pessoa: Pessoa(nome: 'Lucas', sobreNome: 'Silva'));

  print(
      'O funcionario se chama ${funcionario1.pessoa.nome} , possui cargo ${funcionario1.cargo}');

  print('O gerente se chama ${gerente1.pessoa.nome}');
  gerente1.marcarReunicao();
  gerente1.realizarContracao();

  print('O presidente se chama ${presidente1.pessoa.nome}');
  presidente1.fazerInvestimento();
  presidente1.venderAcoes();
}
