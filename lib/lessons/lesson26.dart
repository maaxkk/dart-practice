part of 'lessons.dart';

void Lesson26() {
  final someList = [
    Point(1, 2),
    Point(4, 5),
  ];
  print(someList);
  final pointA = Point(2, 1);
  final pointB = Point(5, 0);
  final pointC = Point(2, 1);
  print(pointA == pointB);
  // print(pointA == '11');
  print(pointA + pointB);
  // print(pointA + '11');
  print(pointA * pointB);
  // print(pointA * '11');
  print(pointA == pointC);
}

class Point extends Equatable{
  final int x;
  final int y;

  const Point(this.x, this.y);

  // @override
  // String toString() {
  //   return 'x: $x, y: $y';
  // }

  // @override
  // int get hashCode => super.hashCode;
  // @override
  // bool operator ==(covariant Point other) {
  //   return x == other.x && y == other.y;
  // }

  String operator *(covariant Point other) {
    return '${x * other.x}, ${y * other.y}';
  }

  String operator +(covariant Point other) {
    return '${x + other.x}, ${y + other.y}';
  }

  @override
  bool? get stringify => true;

  @override
  List<Object?> get props => [x,y];
}

abstract class InterfaceA {
  void a();
}

abstract class InterfaceB {
  void b();
}

class AB implements InterfaceA, InterfaceB {
  @override
  void a() {}

  @override
  void b() {}
}

abstract class Base {
  void foo();

  void bar() => print('bar');
}

// implements must override methods
// class Subclass implements Base {
// extends can override
class Subclass extends Base {
  @override
  void foo() {
    print('foo');
  }
}
