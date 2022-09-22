import 'dart:core';

void main() {
  ListaCompras lista = ListaCompras();

  lista.adicionar({
    Item('Batata', 2),
    Item('Macarrão', 1),
    Item('Feijão', 3),
    Item('Arroz', 2),
    Item('Alface',3)
  });
  lista.comprado({Item('Macarrão', 1), Item('Alface',3)});
  lista.foraDoEstoque({Item('Batata', 2)});
  lista.progressao();
}

class ListaCompras {
  int tLista = 0, progresso = 0;
  Set<Item> itensDesejados = {};
  Set<Item> itensComprados = {};
  Set<Item> semEstoque = {};

  adicionar(Set<Item> novoItem) {
    tLista += novoItem.length;
    itensDesejados.addAll(novoItem);
  }

  comprado(Set<Item> comprado) {
    progresso += comprado.length;
    itensComprados.addAll(comprado);

    for (final itemComprado in comprado) {
      itensDesejados.removeWhere((element) =>
          element.nome == itemComprado.nome &&
          element.quantidade == itemComprado.quantidade);
    }
  }

  foraDoEstoque(Set<Item> itemSemEstoque) {
    
    semEstoque.addAll(itemSemEstoque);
    
    progresso += itemSemEstoque.length;
    for (final semEstoque in itemSemEstoque) {
      itensDesejados.removeWhere((element) =>
          element.nome == semEstoque.nome &&
          element.quantidade == semEstoque.quantidade);
      
      
    }
  }

  progressao() {
    print('Progresso:$progresso/$tLista\n'
        'Ainda é preciso comprar:\n');
    for (final itens in itensDesejados) {
      print('$itens\n');
    }
    
    print('Itens já comprados:');
    for (final itemComprado in itensComprados) {
      print('\n$itemComprado');
    }
    
    print('\nItem sem Estoque:');
    for (final itemFaltaEstoque in semEstoque){
      print('\n$itemFaltaEstoque');
    }
  }

  pendentes() {}
}

class Item {
  String nome;
  int quantidade;

  Item(this.nome, this.quantidade);

  @override
  String toString() => 'Produto: $nome\nQuantidade: $quantidade';
}
