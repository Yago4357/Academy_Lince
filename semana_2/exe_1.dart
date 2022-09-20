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

class MeioDeComunicacao {
  fazerLigacao(String telefone) {
    String a = aleatorio().toString();
    int x = 0;
    if (x == a.compareTo("Instance of 'Orelhao'")) {
      Orelhao().printar(telefone);
    }
    if (x == a.compareTo("Instance of 'Telefone'")) {
      Telefone().printar(telefone);
    }
    if (x == a.compareTo("Instance of 'Celular'")) {
      Celular().printar(telefone);
    }
  }
}

class Orelhao extends MeioDeComunicacao {
  printar(String telefone) {
    print("[ORELHAO] Ligando para $telefone...");
  }
}

class Celular extends MeioDeComunicacao {
  printar(String telefone) {
    print("[CELULAR] Ligando para $telefone...");
  }
}

class Telefone extends MeioDeComunicacao {
  printar(String telefone) {
    print("[TELEFONE] Ligando para $telefone...");
  }
}
