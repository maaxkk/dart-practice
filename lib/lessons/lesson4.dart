part of 'lessons.dart';

void Lesson4() {
  print(5 / 2);
  print(10 - 2 * 3);

  int x = 5;
  x = x + 2;
  // integer division
  x ~/= 2;
  // modulo operator
  int z = x % 2;
  print(x);
  print(z);

  double temperature = 102;

  double temperatureInCelcius = fahrenheitToCelcius(102);
  String temperatureInCelciusString = temperatureInCelcius.toStringAsFixed(1);
  print('$temperature\F = $temperatureInCelciusString\C');

  int i = 1;
  int j = i++;
  int k = j--;
  print("i:$i j:$j k:$k");
}

double fahrenheitToCelcius(double fahrenheit) {
  return (fahrenheit - 32) / 1.8;
}
