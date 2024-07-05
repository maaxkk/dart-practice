part of 'lessons.dart';

void Lesson11() {
  final cities = <String>['Lonodn', 'Paris', 'Kiev'];
  final eCountries = {'UK', 'France', 'Ukraine'};
  final asianCountried = {'China', 'Japan', 'Indonesia', 'India'};
  // print(cities[1]);
  // for (var city in cities) {
  //   print(city);
  // }

  // cities = ['Venice']; // cant do this

  // print(eCountries.elementAt(0));
  // can't add to Set, if set is declared with const
  // eCountries.add('Iceland');
  // print(eCountries);
  // eCountries.add('Italy');
  // print(eCountries);
  // eCountries.remove('UK');
  // print(eCountries);
  // print(eCountries.first);
  // print(eCountries.last);
  // print(eCountries.length);
  // print(eCountries.contains('UK'));

  // Combine both Sets in 1
  print(eCountries.union(asianCountried));
  // Shows what is similar between two sets
  print(eCountries.intersection(asianCountried));
  // Shows difference between two sets
  print(eCountries.difference(asianCountried));

  print('--------------------');


  print(cities.length);
  print(cities.isNotEmpty);
  print(cities.isEmpty);
  print(cities.first);
  // print([].first); // error
  print(cities.last);

  // can add elements to list, if list declared with final, but can't be if declared with const
  cities.add('Tokyo');
  print(cities);
  cities.insert(1, 'Rome');
  print(cities);
  cities.removeAt(2);
  print(cities);
  // cities.clear();
  // print(cities);
  print(cities.contains('Kiev'));
  print(cities.indexOf('Kiev'));
  print(cities.indexOf('Beijing'));

  // for (var i = 0; i < cities.length; i++) {
  //   print(cities[i]);
  // }

  // var someNumbers = [0,1,1,2,3,5,8,13,21,34,55];
  // var sum = 0;
  // for(var i = 0; i < someNumbers.length; i++) {
  //   sum += someNumbers[i];
  // }
  // print(sum);

  const a = {1, 3};
  const b = {3, 5};

  final aDiffB = a.difference(b);
  final bDiffA = b.difference(a);
  final finalSet = aDiffB.union(bDiffA);
  print(finalSet);
  var sum = 0;
  for (var element in finalSet ) {
    sum += element;
  }
  print(sum);
}
