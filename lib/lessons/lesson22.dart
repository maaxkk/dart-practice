part of 'lessons.dart';

void Lesson22() {
  const list3 = [1, 2, 3, 4];
  // final even = list3.where((value) => value % 2 == 0);
  // print(even);
  final value = list3.firstWhere((x) => x == 4, orElse: () => -1);
  // print(value);
  final result2 = myWhere<int>(list3, (x) => x % 2 == 1);
  print(result2);
  const list4 = ['someValue', 'someNumber', 'randomValue', 'someElement'];
  final result3 =
      myWhere<String>(list4, (String element) => element.contains('some'));
  print(result3);

  final result4 = myFirstWhere(list3, (x) => x == 4, orElse: () => -1);
  print(result4);

  const list5 = [1, 2, 3, 4];
  final result5 = list5.reduce((acc, curr) => acc + curr);
  print(result5);

  const emails = [
    'abc@abc.com',
    'me@example.com',
    'john@gmail.com',
    'katy@yahoo.com',
  ];
  const knownDomains = ['gmail.com', 'yahoo.com'];
  final unknownDomains = getUnknownDomains(emails, knownDomains);
  print(unknownDomains);
}

Iterable<String> getUnknownDomains(
    List<String> emails, List<String> knownDomains) {
  return emails
      .map((email) => email.split('@').last)
      .where((domain) => !knownDomains.contains(domain));
  // var results = <String>[];
  // for (var email in emails) {
  //   final domain = email.split('@').last;
  //   if (!knownDomains.contains(domain)) {
  //     results.add(domain);
  //   }
  // }
  // return results;
}

List<T> myWhere<T>(List<T> elements, bool Function(T) cb) {
  List<T> output = [];
  for (T element in elements) {
    if (cb(element) == true) {
      output.add(element);
    }
  }
  return output;
}

T myFirstWhere<T>(List<T> elements, bool Function(T) cb,
    {required T Function() orElse}) {
  for (T element in elements) {
    if (cb(element) == true) {
      return element;
    }
  }
  return orElse();
}
