// NÃO PODE SER MODIFICADO
// -------------------------------------------------------------
import 'dart:math' as math;

void main() {
  final meioDeComunicacao = aleatorio();
  meioDeComunicacao.fazerLigacao('(47) 99876-5432');
}

MeioDeComunicacao aleatorio() {
  final meiosDeComunicacao = <MeioDeComunicacao>[
    Telefone(),
    Celular(),
    Orelhao(),
  ];

  final random = math.Random();

  return meiosDeComunicacao[random.nextInt(
    meiosDeComunicacao.length,
  )];
}

// -------------------------------------------------------------
// ADICIONAR IMPLEMENTAÇÃO RESTANTE ABAIXO DESSA LINHA
// -------------------------------------------------------------

abstract class MeioDeComunicacao {
  void fazerLigacao(String telefone){}
}

class Orelhao extends MeioDeComunicacao {
  @override
  void fazerLigacao(String telefone) {
    print("[ORELHAO] Ligando para $telefone...");
  }
}

class Celular extends MeioDeComunicacao {
  @override
  void fazerLigacao(String telefone) {
    print("[CELULAR] Ligando para $telefone...");
  }
}

class Telefone extends MeioDeComunicacao {
  @override
  void fazerLigacao(String telefone) {
    print("[TELEFONE] Ligando para $telefone...");
  }
}
