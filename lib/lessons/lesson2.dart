part of 'lessons.dart';

void Lesson2() {

  // toUpperCase => make string uppercased;
  // toLowerCase => make string lowercased;
  String title = 'Dart course';
  print(title);
  title = title.toUpperCase();
  print(title);
  title = title.toLowerCase();
  print(title);

  String foodPreference = 'I love pizza';
  // check if we have continuous string in other string
  bool containsPizza = foodPreference.contains('pizza');
  print(containsPizza);

  // Replace continuous sting with our string;
  String lovePasta = foodPreference.replaceAll('pizza', 'pasta');

  print(lovePasta);
}