part of 'lessons.dart';

int randomVar = 150;

void Lesson19() {
  const name = 'Andrea';
  const age = 36;
  print(describe(name, age));

  const name2 = 'Lucy';
  const age2 = 22;
  print(describe(name2, age2));

  print(describe('Tony', 99));

  print(sum([1.5, 2.5, 5.5]));
  print(sum([]));

  print(describeNamed(name: 'Dine'));
  foo(1);
  foo2(3, b: 10);

  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };
  List<String> order = ['margherita', 'pineapple', 'vegetarian'];
  double total = totalSum(prices: pizzaPrices, order: order);
  print(total);
  print(someSum(5, 10));
  print(randomVar);

  const a = 10;
  print(a);
  void bar(int b) {
    print(b);
    print(a);
    void bar2(int c) {
      print(c);
    }
    bar2(122);
  }
  bar(55);
}

int someSum(int x, int y) => x + y;

double totalSum({required Map<String, double> prices, required List<String> order}) {
  double total = 0;
  for (int i = 0; i < order.length; i++) {
    if (prices.containsKey(order[i])) {
      total += prices[order[i]] ?? 0;
    }
  }
  return total;
}

void foo(int a, [int b = 2]) {
  print('a: $a, b: $b');
}

void foo2(int a, {int b = 2}) {
  print('a: $a, b: $b');
}

String describe(String name, int age) {
  return "My name is $name. I'm $age years old";
}

String describeNamed({required String name, int age = 100}) {
  return "My name is $name. I'm $age years old";
}

double sum(List<double> nums) {
  return nums.fold(0, (acc, curr) => acc + curr);
}