part of 'lessons.dart';

var counter = 1; // dont declare global variables

typedef Greet = String Function(String);
// typedef String Greet(String name);

String sayHi(String name) => 'Hi $name';

String sayBonjour(String name) => 'Bonjour $name';

String sayHola(String name) => 'Hola $name';

void Lesson20() {
  foo3();
  foo3();
  foo3();

  final sayHi = (String name) => 'Hi $name';
  // print(sayHi('John'));
  print(sayHi);

  welcome(sayHi, 'John');
  welcome(sayBonjour, 'John');
  welcome(sayHola, 'John');
}

void foo3() {
  print('*' * counter);
  // counter++; // not pure function it modifies external variable
}

// void welcome(String Function(String) greet, String name) {
void welcome(Greet greet, String name) {
  print(greet(name));
}
