void main() {
  List<String> consoantes = [
    'b',
    'c',
    'd',
    'f',
    'g',
    'h',
    'j',
    'k',
    'l',
    'm',
    'n',
    'p',
    'q',
    'r',
    's',
    't',
    'v',
    'w',
    'x',
    'y',
    'z'
  ];
  List<String> consoantesTexto = [];
  List<String> vogais = ['a', 'e', 'i', 'o', 'u'];
  String texto =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis nunc et posuere vehicula. Mauris lobortis quam id lacinia porttitor.';
  int i = 0, totalVogais = 0;

  while (i < consoantes.length) {
    //While para calcular o número de consoantes
    if (((consoantes[i]).allMatches(texto, 0).length) != 0) {
      //Condição que compara as consoantes com o texto.
      consoantesTexto.add(consoantes[i]);
    }
    i++;
  }

  i = 0; // 'i' zerado para que não exija outro identificador para o while

  while (i < vogais.length) {
    //While para calcular o número de vogais
    if (((vogais[i]).allMatches(texto, 0).length) != 0) {
      //Condição que compara as vogais com o texto.
      totalVogais += (vogais[i]).allMatches(texto, 0).length;
    }
    i++;
  }

  print('Paragrafo: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis nunc et posuere vehicula. Mauris lobortis quam id lacinia porttitor.');
  print('Número de palavras:${(texto.split(' ')).length}');
  print('Tamanho do texto: ${texto.length}');
  print('Número de frases: ${(texto.split('.')).length}');
  print('Número de vogais: $totalVogais');
  print('Consoantes encontradas: ${consoantesTexto}');
}
