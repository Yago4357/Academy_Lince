import 'dart:math';

void main() {
  List<String> Nome = [
    'Ana',
    'Maria',
    'Francisco',
    'João',
    'Pedro',
    'Gabriel',
    'Rafaela',
    'Marcio',
    'Jose',
    'Carlos',
    'Patricia',
    'Helena',
    'Camila',
    'Mateus',
    'Gabriel',
    'Samuel',
    'Karina',
    'Antonio',
    'Daniel',
    'Joel',
    'Cristiana',
    'Sebastião',
    'Paula'
  ];
  List<String> Sobrenome = [
    'Silva',
    'Souza',
    'Almeida',
    'Azevedo',
    'Braga',
    'Barros',
    'Campos',
    'Cardoso',
    'Costa',
    'Teixeira',
    'Santos',
    'Rodrigues',
    'Ferreira',
    'Alves',
    'Pereira',
    'Lima',
    'Gomes',
    'Ribeiro',
    'Carvalho',
    'Lopes',
    'Barbosa'
  ];
  final loucura = new Random();
    print(
      '${Nome[loucura.nextInt(Nome.length)]} ${Sobrenome[loucura.nextInt(Sobrenome.length)]}');
}
