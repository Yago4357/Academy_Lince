import 'dart:math';

void main(){

  String Fahrenheit,Kelvin;
  List<double> Celsius = [0.0, 4.2, 15.0, 18.1, 21.7, 32.0, 40.0, 41.0];
  int i = 0;

  while(i<Celsius.length){
    Fahrenheit = ((Celsius[i] * 9/5) + 32).toStringAsFixed(2);
    Kelvin = (Celsius[i]+273.145).toStringAsFixed(2);
    print("Celcius: ${Celsius[i]}, fahrenheit: $Fahrenheit, kelvin: $Kelvin");
    i++;
  }
}