import 'porta.dart';

//implemta semelhante a interfaces do CE
class PortaCarro implements Porta {
  @override
  abrir() {
    print("Abrir Porta!");
  }

  @override
  fechar() {
    print("Fechar Porta!");
  }
}
