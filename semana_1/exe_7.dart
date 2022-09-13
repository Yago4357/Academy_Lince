void main() {
  List<int> num = [10, 35, 999, 126, 95, 7, 348, 462, 43, 109];
  int i = 10, soma = 0;

  print("for: ${forMode(num, i, soma)}");
  print("while:${whileMode(num, i, soma)}");
  print("recursão: ${recursionMode(num, i)}");
  print("lista: ${listMode(num, i, soma)}");
}

int forMode(List<int> num, int i, int soma) {
  for (i = 0; i < num.length; i++) {
    soma += num[i];
  }

  return soma;
}

int whileMode(List<int> num, int i, int soma) {
  i = 9;
  while (i > -1) {
    soma += num[i];
    i--;
  }

  return soma;
}



int recursionMode(List<int> num, int i) {
  if (i == 0) {
    return 0;
  } else {
    return num[i - 1] + recursionMode(num, i - 1);
  }
}





int listMode(List<int> num, int i, int soma) {
  soma += num.reduce((i, j) => i + j);

  return soma;
}
