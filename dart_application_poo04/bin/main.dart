import 'models/filho.dart';

void main(List<String> arguments) {
  var filho1 = Filho('Pedro');
  filho1.nomeDoPai = 'Antonio';
  filho1.trabalhador = true;
  filho1.estudioso = true;
  filho1.nomeDoAvo = 'Ezequiel';

  print(
      'Estudo de herança nas classes, ${filho1.nomeFilho} é filho do ${filho1.nomeDoPai}, que é filho do ${filho1.nomeDoAvo}');
  print('É trabalhador? ${filho1.trabalhador}');
  filho1.caracteristicas();
}
