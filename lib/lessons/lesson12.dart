part of 'lessons.dart';

void Lesson12() {
  var person = <String, dynamic>{
    'name': 'John',
    'age': 30,
    'height': 1.8,
  };
  print(person);
  // At compile time dart cant work out that variable is string
  // var name = person['name'];
  var name = person['name'] as String;
  // or
  // String name = person['name'];
  print(name.toUpperCase());
  person['age'] = 30;
  person['likesPizza'] = true;
  print(person);
  var weight = person['weight'];
  // print(weight); // null
  if (weight == null) {
    print('no value');
  } else {
    print(weight);
  }

  // for (var key in person.keys) {
  //   print(person[key]);
  // }

  // for (var value in person.values) {
  //   print(value);
  // }

  // for (var entry in person.entries) {
  //   print('${entry.key}: ${entry.value} ');
  // }

  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  const order = ['margherita', 'pepperoni', 'pineapple'];
  var orderSum = 0.0;
  for (var pizza in order) {
    var pizzaPrice = pizzaPrices[pizza];
    if (pizzaPrice != null) {
      orderSum += pizzaPrice;
    } else {
      print('$pizza pizza is not on menu');
    }
  }
  print('Order sum is $orderSum');
}
