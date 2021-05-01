import 'avo.dart';
import 'pai.dart';

//Uso de Mixins
//Herda de mais de uma classe
class Filho extends Pai with Avo {
  String nomeFilho;
  bool estudioso;
  bool persistente;

  Filho([this.nomeFilho]);

  @override
  void caracteristicas() {
    //Usa o metodo da classe pai e reescreve:
    print('Eu herdei de meu pas as caracteristicas');
    return super.caracteristicas();
  }
}
