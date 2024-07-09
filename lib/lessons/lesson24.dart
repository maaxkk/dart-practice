part of 'lessons.dart';

void Lesson24() {
  final restaurant1 = Restaurant(
      name: 'Pizza Bobo',
      cuisine: 'italian',
      ratings: [3.5, 4.5, 5.0, 5.0, 4.5, 4.0]);
  final restaurant2 = Restaurant(
      name: 'Sushi Dodo',
      cuisine: 'japanese',
      ratings: [4.5, 4.5, 5.0, 5.0, 4.5, 4.0]);
  final restaurant3 = Restaurant(
      name: 'Taco Coco',
      cuisine: 'mexican',
      ratings: [2.5, 3.5, 4.0, 5.0, 4.5, 4.0]);

  print(restaurant1.averageRating().toStringAsFixed(2));
  print(restaurant2.averageRating().toStringAsFixed(2));
  print(restaurant3.averageRating().toStringAsFixed(2));
  print('reviews: ${restaurant3.reviewsCount}');

  restaurant3.addReview(5.0);
  restaurant3.addReview(5.0);
  restaurant3.addReview(5.0);

  print(restaurant3.averageRating().toStringAsFixed(2));
  print('reviews: ${restaurant3.reviewsCount}');

  print(Strings.signIn);
  print(Strings.greet('Joe'));

  final b = BankAccount2(100);
  print(b._balance);
  b._balance = 10000000;
  print(b._balance);
}

class Strings {
  static const String welcome = 'Welcome';
  static const String signIn = 'Sign in';

  static String greet(name) => 'Hi $name';
}

class BankAccount2 {
  double _balance;
  double get balance => _balance;
  BankAccount2(this._balance);
}

class Restaurant {
  const Restaurant({
    required this.name,
    required this.cuisine,
    required this.ratings,
  });

  final String name;
  final String cuisine;
  final List<double> ratings;

  int get reviewsCount => ratings.length;

  double averageRating() {
    if (ratings.isEmpty) {
      return 0.0;
    }
    return ratings.reduce((acc, curr) => acc + curr) / ratings.length;
  }

  void addReview(rating) {
    ratings.add(rating);
  }
}
