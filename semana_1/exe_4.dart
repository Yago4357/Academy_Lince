import 'package:intl/intl.dart';

void main() {
  int i = 0;
  var novaData = DateTime.now(); //Adicioan a data
  var formatacao = new DateFormat('dd/MM/yyyy'); //Cria uma formatação para a data
  print("Data atual: ${formatacao.format(novaData)}");
  while (i < 18) {
    novaData = novaData.add(Duration(days: 1)); //Adiciona 1 dia a data
    if (novaData.weekday != DateTime.sunday &&
        novaData.weekday != DateTime.saturday) {
      //Checagem se o dia da semana é sábado ou domingo
      i++;
    }
  }
  print("Data calculada: ${formatacao.format(novaData)}");
} 
