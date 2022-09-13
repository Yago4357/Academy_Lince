import 'dart:convert';

void main() {
  List<int> Deci = [3, 17, 23, 49, 328, 1358, 21, 429, 12, 103, 20021];
  int i = 0;

  while (i < Deci.length) {
    Deci.sort();
    print(
        "decimal: ${Deci[i]}, binario: ${Deci[i].toRadixString(2)}, octal: ${Deci[i].toRadixString(4)}, hexadecimal: ${Deci[i].toRadixString(16)}");
    i++;
  }
}
