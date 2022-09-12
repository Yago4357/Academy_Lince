import 'dart:convert';

void main(){
  
  String Hexa,Octa,Binary;
  List<int> Deci = [3, 17, 23, 49, 328, 1358, 21, 429, 12, 103, 20021];
  int i=0;
  
  while(i<Deci.length){
    Deci.sort();
    Hexa = Deci[i].toRadixString(16);
    Octa = Deci[i].toRadixString(4);
    Binary = Deci[i].toRadixString(2);
    print("decimal: ${Deci[i]}, binario: $Binary, octal: $Octa, hexadecimal: $Hexa");
    i++;
  }
}