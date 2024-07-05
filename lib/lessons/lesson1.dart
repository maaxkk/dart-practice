part of 'lessons.dart';

void Lesson1() {
  double temperature = 20;
  int value = 4;
  String pizza = 'pizza';
  String pasta = 'pasta';

  print('The temperature is $temperature');
  // we can use $ to show value as string and ${} to calculate something inside {} and show it as string
  print('$value + $value = ${value + value}');
  print('I like $pizza and $pasta');

  // Escape character says to print next character as string
  print('Today I\'m feeling great');
  print('\$');

  print('C:\\\\Windows\\\\system32');
  // we can use r'' to print something with special characters like windows path to file
  print(r'C:\\Windows\\system32');
  print(r'300$');


  // Use \n to print on the next line
  print('This is very short sentence\nThis is more longer sentence, a bit \nthis sentence is the longest sentence one');

  // Use """ triple quotes to print a lot of lines in 1 string
  print("""This is very short sentence
  This is more longer sentence, a bit
  this sentence is the longest sentence one""");
}

