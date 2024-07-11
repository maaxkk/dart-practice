part of 'lessons.dart';

void Lesson27() {
  final stack = Stack<int>();
  stack.push(1);
  stack.push(2);
  print(stack.pop());
  print(stack.pop());
  final names = Stack<String>();
  names.push('John');
  names.push('Doe');

  final button = Button(
    child: Text('Hello'),
    onPressed: () => print('button pressed'),
  );

  final person = Person2.fromJson({
    'name': 'John',
    'age': 30,
  });
  print('Person age: ${person.age}, Person name: ${person.name}');

  final someJson = person.toJson();
  print(someJson);

  const credentials = Credentials();
  final updated1 = credentials.copyWith(email: 'ma@example.com');
  print(updated1);
  final updated2 = updated1.copyWith(password: 'too-easy');
  print(updated2);

  final path = ClosedPath()
    ..moveTo(Point(0, 0))
    ..lineTo(Point(2, 0))
    ..lineTo(Point(2, 2))
    ..lineTo(Point(0, 2))
    ..lineTo(Point(0, 0));
}

class ClosedPath {
  List<Point> _points = [];

  void moveTo(Point point) {
    _points = [point];
  }

  void lineTo(Point point) {
    _points.add(point);
  }
}

class Credentials {
  final String email;
  final String password;

  const Credentials({this.email = '', this.password = ''});

  Credentials copyWith({String? email, String? password}) {
    return Credentials(
        email: email ?? this.email, password: password ?? this.password);
  }

  @override
  String toString() {
    return 'pass: $password, email: $email';
  }
}

class Person2 {
  final String name;
  final int age;

  Person2({required this.name, required this.age});

  factory Person2.fromJson(Map<String, Object> json) {
    final name = json['name'];
    final age = json['age'];
    if (name is! String) {
      throw UnsupportedError('Name must be string');
    } else if (age is! int) {
      throw UnsupportedError('Age must be integer');
    }
    return Person2(name: name, age: age);
  }

  toJson() {
    final personMap = {};
    personMap['name'] = name;
    personMap['age'] = age;
    return personMap;
  }
}

abstract class Widget {}

class Text extends Widget {
  final String text;

  Text(this.text);
}

class Button extends Widget {
  final Widget child;
  final void Function()? onPressed;

  Button({required this.child, this.onPressed});
}

class Stack<T> {
  final List<T> _items = [];

  void push(T item) => _items.add(item);

  T pop() => _items.removeLast();
}
