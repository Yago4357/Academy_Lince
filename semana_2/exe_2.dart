import 'dart:math';

void main() {
  final pessoa = Pessoa();
  
  final fornecedor = [ FornecedorDeBebidas(), FornecedorDeBolos(), FornecedorDeSaladas(), 
                      FornecedorDeSanduiches(),FornecedorDeUltraCaloricos(),FornecedorDePetiscos()]; 
  
  final random = Random();
  int refeicoes = 0;
  
  // Consumindo produtos fornecidos
  for (var i = 0; i < 5; i++) { //Obejtivo 2 Concluído 
    
    refeicoes++;
    int j = random.nextInt(fornecedor.length);
    
    pessoa.refeicao(fornecedor[j]);
  }
  num _calorias = pessoa.calorias();
  pessoa.informacoes(_calorias);
  pessoa.refeicoes(_calorias,refeicoes);
}

class Produto {
  
  Produto(this.nome, this.calorias);

  /// Nome deste produto
  final String nome;

  /// Total de calorias
  final int calorias;
}

enum Status{
  deficitExtremo,
  deficit,
  satisfeita,
  excesso
}

class FornecedorDeBebidas { 
  final _random = Random();
  final _bebidasDisponiveis = <Produto>[
    Produto('Agua', 0),
    Produto('Refrigerante', 200),
    Produto('Suco de fruta', 100),
    Produto('Energetico', 135),
    Produto('Café', 60),
    Produto('Cha', 35),
  ];

  Produto fornecer() {
    return _bebidasDisponiveis[_random.nextInt(_bebidasDisponiveis.length)];
  }
}

class FornecedorDeBolos { //Objetivo 1 Concluido 1/5
  final _random = Random();
  final _bolosDisponiveis = <Produto>[
    Produto('Bolo de cenoura sem cobertura', 227),
    Produto('Bolo de chocolate com recheio e calda de chocolate', 540),
    Produto('Bolo de banana', 295),
    Produto('Bolo de limão', 232),
    Produto('Cupcake', 131),
  ];
  
  Produto fornecer() {
    return _bolosDisponiveis[_random.nextInt(_bolosDisponiveis.length)];
  }
  
}

  class FornecedorDeSanduiches{ //Objetivo 1 Concluido 2/5
  final _random = Random();
  final _sanduichesDisponiveis = <Produto>[
    Produto('Sanduíche de frango', 410),
    Produto('Sanduíche de peixe', 431),
    Produto('Sanduíche de presunto', 352),
    Produto('Sanduíche de almôndega', 481),
    Produto('Sanduíche de frango teriyaki', 367),
  ];
    
    Produto fornecer() {
    return _sanduichesDisponiveis[_random.nextInt(_sanduichesDisponiveis.length)];
  }
}   

    class FornecedorDeSaladas {  //Objetivo 1 Concluido 3/5
  final _random = Random();
  final _saladasDisponiveis = <Produto>[
    Produto('Salada de Folhas', 28),
    Produto('Salada Crua', 25),
    Produto('Salada Cozida', 70),
    Produto('Salada Verde Mista', 9),
    Produto('Salada Vinagrete', 89),
  ];
      
    Produto fornecer() {
    return _saladasDisponiveis[_random.nextInt(_saladasDisponiveis.length)];
  }
}   

      class FornecedorDePetiscos { //Objetivo 1 Concluido 4/5
  final _random = Random();
  final _petiscosDisponiveis = <Produto>[ 
    Produto('Amendoim japonês', 100),
    Produto('Baconzitos', 126),
    Produto('Batata ruffles', 141),
    Produto('Bolinho de bacalhau', 170),
    Produto('Cebolitos', 123),
  ];
        
    Produto fornecer() {
    return _petiscosDisponiveis[_random.nextInt(_petiscosDisponiveis.length)];
  }
}  

        class FornecedorDeUltraCaloricos { //Objetivo 1 Concluido 5/5
  final _random = Random();
  final _ultraCaloricosDisponiveis = <Produto>[
    Produto('Ultra-caloricos', 500),
  ];
          
    Produto fornecer() {
    return _ultraCaloricosDisponiveis[_random.nextInt(_ultraCaloricosDisponiveis.length)];
  }
}

class Pessoa{
  
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
  
  
  
   num calorias(){ //Objetivo 3 Concluido ( Dúvidas: Não entendi para que eu usaria o Enum neste caso)
     
    Random _aleatorio = Random();
    int _caloriasInicias = _aleatorio.nextInt(3000); //Objetivo 4 Concluido.
    num _calorias = _caloriasInicias + _caloriasConsumidas;
  
     if(_calorias<=500){
    caloriasStatus = Status.deficitExtremo;
    print('Status: Deficit extremo de calorias');
  }
     
  else{
    
    if(_calorias<=1800){
    caloriasStatus = Status.deficit;
    print('Status: Deficit de calorias');
      }
    
    else{
      
      if(_calorias<=2500){
    caloriasStatus = Status.satisfeita;
    print('Status: Pessoa está satisfeita');
  }
      
  else{
    
    if(_calorias>2500){
    caloriasStatus = Status.excesso;
    print('Status: Excesso de calorias');
      
  }}}}
     
     return _calorias;
     
  }
  
  void refeicoes(num _calorias,int refeicoes){ // Objetivo 5 Concluido.
    
      print('Foram feitas $refeicoes refeições'); //Objetivo 6 Concluido.
      if(caloriasStatus == Status.excesso || caloriasStatus == Status.satisfeita){
        print('A pessoa teve refeições suficientes');
      }
      if(caloriasStatus == Status.deficit || caloriasStatus == Status.deficitExtremo){
        print('A pessoa precisa de mais refeições');
      }
    
        
  }
  
}