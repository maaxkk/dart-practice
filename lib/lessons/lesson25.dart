// import 'package:first_app/lessons/lessons.dart';
part of 'lessons.dart';

void Lesson25() {
  final b2 = BankAccount2(100);
  // b2._balance = 100000; // error
  // print(b2.balance);

  const x = ClassConst(50);
  const y = ClassConst(50);
  const z = ClassConst(100);
  // print(x == y);
  // print(x == z);

  // final animal = Animal(age: 10);
  // animal.sleep();

  final dog = Dog(age: 12);
  // dog.bark();
  // dog.sleep();

  // final cow = Cow(age: 14);
  // cow.moo();
  // cow.sleep();

  // final cleverDog = CleverDog(age: 15);
  // cleverDog.catchBall();
  // cleverDog.bark();
  // cleverDog.sleep();

  // final Shape square = Square(side: 10);
  // printArea(square);
  //
  // final Shape circle = Circle(radius: 5);
  // printArea(circle);

  final List<Shape> shapes = [
    Square(side: 5),
    Circle(radius: 10),
  ];
  // shapes.forEach(printValues);

  final shapesJson = [
    {
      'type': 'square',
      'side': 5.0,
    },
    {
      'type': 'circle',
      'radius': 5.0,
    },
    {
      'type': 'triangle',
      'radius': 5.0,
    },
  ];

  final shapes2 = shapesJson.map((shapeJson) => Shape.fromJson(shapeJson));
  shapes2.forEach(printValues);
}

class Circle extends Shape {
  final double radius;

  const Circle({required this.radius});

  @override
  double get area => pi * radius * radius;

  @override
  double get perimeter => 2 * pi * radius;
}

class Square extends Shape {
  final double side;

  Square({required this.side});

  @override
  double get area => side * side;

  @override
  double get perimeter => 4 * side;
}

void printArea(Shape shape) {
  print(shape.area);
}

void printValues(Shape shape) {
  print(shape.area);
  print(shape.perimeter);
}

abstract class Shape {
  double get area;
  double get perimeter;

  const Shape();

  factory Shape.fromJson(Map<String, Object> json) {
    final type = json['type'];
    switch(type) {
      case 'square':
        final side = json['side'];
        if (side is double) {
          return Square(side: side);
        }
        throw UnsupportedError('Invalid or missing side property');
      case 'circle':
        final radius = json['radius'];
        if (radius is double) {
          return Circle(radius: radius);
        }
        throw UnsupportedError('Invalid or missing side property');
      default:
        throw UnimplementedError('Shape $type not recognized');
    }
  }
}

class Animal {
  final int age;

  Animal({required this.age});

  void sleep() => print('sleep');
}

class Dog extends Animal {
  Dog({required int age}) : super(age: age);

  @override
  void sleep() {
    super.sleep();
    print('dog: sleep');
  }

  void bark() => print('bark');
}

class Cow extends Animal {
  Cow({required int age}) : super(age: age);

  void moo() => print('moo');
}

class CleverDog extends Dog {
  CleverDog({required int age}) : super(age: age);

  void catchBall() => print('catch ball');
}

class ClassConst {
  final int num;

  const ClassConst(this.num);
}
