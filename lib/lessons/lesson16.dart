part of 'lessons.dart';

void Lesson16() {
  const person = {'name': 'Andrea'};
  if (person['age'] == null) {
    print('age is missing');
  } else {
    print(person['age']);
  }
  int? a = 5;
  int b = 2;
  if (a == null) {
    print('a is null');
  } else {
    print(a + b);
  }

  const x = -1;
  // int sign = x >= 0 ? 1 : -1;
  // int sign;
  // if (x >= 0) {
  //   sign = 1;
  // } else {
  //   sign = -1;
  // }
  // print(sign);

  int? maybeValue;
  if (x > 0) {
    maybeValue = x;
  }
  // int value = maybeValue!;
  // int value = maybeValue == null ? 0 : maybeValue;
  // int value = maybeValue ?? 0;
  maybeValue ??= 0;
  final value = maybeValue;
  print(value);

  var cities = <String?>['London', 'Paris', null];

  for (var city in cities) {
    // if (city != null) {
    //   print(city.toUpperCase());
    // }
    print(city?.toUpperCase());
  }
}