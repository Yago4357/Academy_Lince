import 'dart:math';

void main() {
  final pessoa = Pessoa();
  final fornecedor = [[<Produto>[
    Produto('Ultra-caloricos', 500)],
    [<Produto>[Produto('Agua', 0)]],Produto('Bolo de cenoura sem cobertura', 227),
  ];
  final random = Random();
  int refeicoes = 0;

  // Consumindo produtos fornecidos
  for (var i = 0; i < 5; i++) {
    //Obejtivo 2 Concluído

    refeicoes++;
    int j = random.nextInt(fornecedor.length);

    pessoa.refeicao(fornecedor[j]);
  }
  num _calorias = pessoa.calorias();
  pessoa.informacoes(_calorias);
  pessoa.refeicoes(_calorias, refeicoes);
}

class Fornecedor {
  final _random = Random();

  
}

class Produto {
  Produto(this.nome, this.calorias);

  /// Nome deste produto
  final String nome;

  /// Total de calorias
  final int calorias;
}

enum Status { deficitExtremo, deficit, satisfeita, excesso }

class Pessoa {
  Status caloriasStatus = Status.deficit;

  // Acumulador de calorias
  num _caloriasConsumidas = 0;

  /// Imprime as informações desse consumidor
  void informacoes(num _calorias) {
    print('Calorias consumidas: $_calorias');
  }

  /// Consome um produto e aumenta o numero de calorias
  void refeicao(final fornecedor) {
    final produto = fornecedor.fornecer();
    print('Consumindo ${produto.nome} (${produto.calorias} calorias)');
    _caloriasConsumidas += produto.calorias;
  }

  num calorias() {
    //Objetivo 3 Concluido ( Dúvidas: Não entendi para que eu usaria o Enum neste caso)

    Random _aleatorio = Random();
    int _caloriasInicias = _aleatorio.nextInt(3000); //Objetivo 4 Concluido.
    num _calorias = _caloriasInicias + _caloriasConsumidas;

    if (_calorias <= 500) {
      caloriasStatus = Status.deficitExtremo;
      print('Status: Deficit extremo de calorias');
    } else {
      if (_calorias <= 1800) {
        caloriasStatus = Status.deficit;
        print('Status: Deficit de calorias');
      } else {
        if (_calorias <= 2500) {
          caloriasStatus = Status.satisfeita;
          print('Status: Pessoa está satisfeita');
        } else {
          if (_calorias > 2500) {
            caloriasStatus = Status.excesso;
            print('Status: Excesso de calorias');
          }
        }
      }
    }

    return _calorias;
  }

  void refeicoes(num _calorias, int refeicoes) {
    // Objetivo 5 Concluido.

    print('Foram feitas $refeicoes refeições'); //Objetivo 6 Concluido.
    if (caloriasStatus == Status.excesso ||
        caloriasStatus == Status.satisfeita) {
      print('A pessoa teve refeições suficientes');
    }
    if (caloriasStatus == Status.deficit ||
        caloriasStatus == Status.deficitExtremo) {
      print('A pessoa precisa de mais refeições');
    }
  }
}
