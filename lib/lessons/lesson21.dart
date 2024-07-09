part of 'lessons.dart';

void Lesson21() {
  const multiplier = 10;
  const list = [1,2,3];
  final Iterable<int> result = list.map((x) => x * multiplier);
  print(result);
  // result.forEach((value) => print(value));

  // result.forEach(print);

  // for (var value in result) {
  //   print(value);
  // }
  print(result.length);
  final result2 = [];
  for (int value in list) {
    result2.add(value * multiplier);
  }
  print(result2);

  final list2 = [1.2, 1.4, 3.2, 4.5];

  final doubles = doubleItems([1,2,3]);
  final doubles2 = transform<int, int>([1,2,3], (x) => x * 2);
  final triples = transform<int, int>([1,2,3], (x) => x * 3);
  final triples2 = transform<double, int>(list2, (x) => (x * 3).round());
  // anonymous function returns type R, which is int in this function call, because .round() returns int
  print(doubles);
  print(doubles2);
  print(triples);
  print(triples2);
}

List<R> transform<T, R>(List<T> items, R Function(T) f) {
  var result = <R> [];
  for (var x in items) {
    result.add(f(x));
  }
  return result;
}

List<int> doubleItems(List<int> items) {
  var result = <int> [];
  for (var x in items) {
    result.add(x * 2);
  }
  return result;
}