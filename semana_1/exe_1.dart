import 'dart:math';

void main() {
  double Peri,Area;
  List<double> Raio = [5, 8, 12, 7.3, 18, 2, 25];
  int i =0;

  while(i<Raio.length){

    print("Raio: ${Raio[i]}, área: ${double.parse((pi * (Raio[i] * Raio[i])).toStringAsFixed(2))}, perímetro: ${double.parse((2 * pi * Raio[i]).toStringAsFixed(2))}.");
    
    i++;
  }
}