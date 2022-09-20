void main() {
  Musicas musicas = new Musicas();
  musicas.printar();

  String buscar = 'Queen';
  musicas.buscar(buscar);
}

class Musicas {
  List<String> nomeMusica = [
    'Vi de Relance a Coroa',
    'Music for a Sushi Restaurant',
    'Another One Bites the Dust',
    'Play The Game'
  ];
  List<String> nomeArtista = [
    'Juçara Marçal',
    'Harry Styles',
    'Queen',
    'Queen'
  ];
  List<String> nomeAlbum = [
    'Delta Estácio Blues',
    "Harrys's Hosue",
    'The Game',
    'The Game'
  ];
  List<int> duracao = [199, 187, 201, 198];
  int duracaoTotal = 0;
  void printar() {
    for (int i = 0; i < nomeMusica.length; i++) {
      duracaoTotal += duracao[i];
      print('Titulo: ${nomeMusica[i]}\n'
          'Artista: ${nomeArtista[i]}\n'
          'Album: ${nomeAlbum[i]}\n'
          'Duração em Segundos: ${duracao[i]}\n');
    }
    print(
        'Duração total: ${(duracaoTotal / 3600).toStringAsFixed(2)} em horas\n');
  }

  buscar(String texto) {
    int i = 0;
    String opcao = ' ';
    int x = 0;
    nomeMusica.forEach((element) {
      opcao = 'Musica';
      if (0 == texto.compareTo(nomeMusica[i])) {
        musicaSelecionado(x, i, texto, opcao);
        x++;
      }
      i++;
    });
    i = 0;

    nomeArtista.forEach((element) {
      opcao = 'Artista';
      if (0 == texto.compareTo(nomeArtista[i])) {
        musicaSelecionado(x, i, texto, opcao);
        x++;
      }
      i++;
    });
    i = 0;

    nomeAlbum.forEach((element) {
      opcao = 'Album';
      if (0 == texto.compareTo(nomeAlbum[i])) {
        musicaSelecionado(x, i, texto, opcao);
        x++;
      }
      i++;
    });
  }

  musicaSelecionado(int x, int i, String texto, opcao) {
    if (x == 0) {
      print('Músicas encontradas procurando pelo $opcao $texto\n');
      x++;
    }

    print('Titulo: ${nomeMusica[i]}\n'
        'Artista: ${nomeArtista[i]}\n'
        'Album: ${nomeAlbum[i]}\n'
        'Duração em Segundos: ${duracao[i]}\n');
  }
}

//Código com a lógica certa mas feita da forma errada, segui o mentor durante a mentoria mas esqueci de copiar a correção e esqueci de como implementar ela.
