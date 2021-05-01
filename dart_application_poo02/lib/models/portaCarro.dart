import 'porta.dart';

//implemta semelhante a interfaces do CE
class PortaCarro implements Porta {
  @override
  void abrir() {
    print('Abrir Porta!');
  }

  @override
  void fechar() {
    print('Fechar Porta!');
  }
}
