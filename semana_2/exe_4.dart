import 'dart:math' as math;

void main() {
  // Definindo o comparador de formas
  final comparador = ComparadorFormasGeometricas();

  // Definindo as formas geometricas
  final circuloA = Circulo('Circulo A', 3);
  final circuloB = Circulo('Circulo B', 8);
  final retanguloA = Retangulo('Retangulo A', altura: 4, largura: 3);
  final retanguloB = Retangulo('Retangulo B', altura: 19, largura: 11);

  final circuloMaiorArea = comparador.getArea(circuloA, circuloB);
  final retanguloMaiorArea = comparador.getArea(
    retanguloA,
    retanguloB,
  );

  if (circuloMaiorArea.area > retanguloMaiorArea.area) {
    print(
      'A maior area é ${circuloMaiorArea.area.toStringAsFixed(2)} '
      'e pertence a ${circuloMaiorArea.nome}',
    );
  } else {
    print(
      'A maior area é ${retanguloMaiorArea.area.toStringAsFixed(2)} '
      'e pertence a ${retanguloMaiorArea.nome}',
    );
  }

  final circuloaiorPerimetro = comparador.getPerimetro(
    circuloA,
    circuloB,
  );
  final retanguloMaiorPerimetro = comparador.getPerimetro(
    retanguloA,
    retanguloB,
  );

  if (circuloaiorPerimetro.area > retanguloMaiorPerimetro.area) {
    print(
      'O maior perimetro é ${circuloaiorPerimetro.perimetro.toStringAsFixed(2)} '
      'e pertence a ${circuloaiorPerimetro.nome}',
    );
  } else {
    print(
      'O maior perimetro é ${retanguloMaiorPerimetro.perimetro.toStringAsFixed(2)} '
      'e pertence a ${retanguloMaiorPerimetro.nome}',
    );
  }
}

abstract class Formas {
  //Objetivos 1 e 2 Concluidos.
  final String nome;
  final double? lado;
  final int? nLados;

  Formas(this.nome, {this.lado, this.nLados});
}

/// Representa a forma geometrica "círculo"
class Circulo extends Formas {
  //Objetivos 1 e 2 Concluidos.
  /// Construtor padrão, recebe o [raio] do círculo.
  Circulo(super.nome, this.raio);
  final double raio;

  /// Retorna a area desse circulo
  double get area => math.pi * math.pow(raio, 2);

  /// Retorna o perimetro desse circulo
  double get perimetro => 2 * math.pi * raio;
}

/// Representa a forma geometrica "retangulo", forma geometrica de quatro lados
/// e angulos retos (90 graus).
class Retangulo extends Formas {
  /// Construtor padrão, recebe a [altura] e [largura] do retangulo
  Retangulo(super.nome, {super.lado, super.nLados, this.altura, this.largura});

  final double? largura;
  final double? altura;

  /// Retorna a area desse circulo
  double get area => altura! * largura!;

  /// Retorna o perimetro desse circulo
  double get perimetro => (altura! * 2) + (largura! * 2);
}

/// Representa a forma geometrica "quadrado", que é um formato especial de
/// retangulo, onde todos os lados possuem o mesmo tamanho.
class Quadrado extends Retangulo {
  /// Construtor padrão, recebe o [lado] do quadrado
  Quadrado(super.nome, {super.lado, super.nLados});

  /// Retorna a area desse quadrado
  double get area => lado! * lado!;

  /// Retorna o perimetro desse quadrado
  double get perimetro => lado! * nLados!;
}

/// Representa a forma geometrica "triangulo", figura fechada
/// e plana formado por três lados.
abstract class Triangulo extends Formas {
  final double base, altura;
  final int? ladoA, ladoB, ladoC;

  Triangulo(super.nome, this.altura, this.base, this.ladoA,
      {this.ladoB, this.ladoC});

  /// Retorna a area desse triangulo
  double get area => (base * altura) / 2;

  /// Retorna o perimetro desse triangulo
  int get perimetro => ladoA! + ladoB! + ladoC!;
}

/// Representa a forma geometrica "trianguloEquilatero", figura fechada
/// e plana formado por três lados iguais.
class TrianguloEquilatero extends Triangulo {
  //Objetivo 4 Concluido.
  TrianguloEquilatero(super.nome, super.altura, super.base, super.ladoA);
}

/// Representa a forma geometrica "trianguloEquilatero", figura fechada
/// e plana formado por três lados e possui um angulo com 90 graus.
class TrianguloRetangulo extends Triangulo {
  //Objetivo 5 Concluido.
  TrianguloRetangulo(super.nome, super.altura, super.base, super.ladoA);
}

/// Representa a forma geometrica "pentagono", figura geométrica
/// formada por cinco ângulos e lados.
class Pentagono extends Formas {
  //Objetivo 6 Concluido.
  final double apotema;

  Pentagono(super.nome, lado, nLados, this.apotema);

  double get area => lado! * 5 * apotema;
  double get perimetro => lado! * nLados!;
}

/// Representa a forma geometrica "hexagono", figura geométrica
/// formada por seis ângulos e lados.
class Hexagono extends Formas {
  //Objetivo 7 Concluido.
  Hexagono(nome, lado, super.nLados);

  double get area => ((math.pow((3 * lado!), 2) * math.sqrt(3)) / 2);
  double get perimetro => lado! * nLados!;
}

/// Compara caracteristicas de formas geometricas
class ComparadorFormasGeometricas {
  // Objetivo 3 completo.
  /// Retorna o circulo com a maior area, ou [formaA] caso as areas sejam
  /// iguais
  getArea(final formaA, final formaB) {
    if (formaA.area > formaB.area) {
      return formaA;
    } else if (formaB.area > formaA.area) {
      return formaB;
    }
    return formaA;
  }

  /// Retorna o retangulo com o maior perimetro, ou [formaA] caso os
  /// perimetros sejam iguais
  getPerimetro(final formaA, final formaB) {
    if (formaA.perimetro > formaB.perimetro) {
      return formaA;
    } else if (formaB.perimetro > formaA.perimetro) {
      return formaB;
    }
    return formaA;
  }
}
