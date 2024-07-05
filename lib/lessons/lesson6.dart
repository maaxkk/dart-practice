part of 'lessons.dart';

void Lesson6() {
  var name = 'Andrea';
  var age = 36;
  var height = 1.84;

  final title = 'Dart course';
  final titleUppercased = title.toUpperCase();
  print(titleUppercased);

  // cant assign to the final variable
  // titleUppercased = '123';

  const x = 1;
  const y = 2;
  const z = x + y;

  print(z);

  const favorites = 'I love pizza';
  final newText = favorites.replaceAll('pizza', 'pasta');
  print(newText);

  dynamic dynamicVar = 10;
  dynamicVar = true;

  print(dynamicVar);

}