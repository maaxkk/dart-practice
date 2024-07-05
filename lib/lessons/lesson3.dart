part of 'lessons.dart';

void Lesson3() {
  int age = 99;
  String ageString = age.toString();
  double height = 1.84;

  // shows only 1 symbol after . => 1.8 != 1.84
  String heightString = height.toStringAsFixed(1);
  print(heightString);

  String ratingString = "4.5";
  // 4.5 double
  double rating = double.parse(ratingString);
  print(rating);

  int x = 10;
  double y = x.toDouble();
  double z = 20;
  int w = 40.6.round();
  print(w); // 41
}