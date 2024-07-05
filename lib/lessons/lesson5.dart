part of 'lessons.dart';

void Lesson5() {
  print(5 >= 2);
  print(10 == 10);
  print(1 > 999);

  print(5 < 2 || 5 < 7);
  print(5 < 2 && 5 < 7);
  print(!(5 < 2));

  String email = 'test@example.com';

  print(email.isNotEmpty && email.contains('@'));

  int age = 10;
  String type = age > 16 ? 'adult' : 'child';

  print(type);

  int x = 4;
  print((x >> 1).toRadixString(2));

  /*
  * Multiline
  * Comments
  * */

  // expression => hold value at runtime
  // statements => do not hold a value

  // expression
  int z = (10 + 3) % 4;

  // statement
  print(z);
}
