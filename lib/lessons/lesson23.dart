part of 'lessons.dart';

void Lesson23() {
  final bankAccount = BankAccount(accountHolder: 'John');
  bankAccount.deposit(100);
  final bankAccount2 = BankAccount(accountHolder: 'Doe');
  bankAccount2.deposit(50);
  bankAccount2.deposit(75);
  final success1 = bankAccount.withdraw(200);
  final success2 = bankAccount2.withdraw(100);
  print(bankAccount.balance);
  print(bankAccount2.balance);
  bankAccount2.balance = 50000000;
  print(
      'success: $success1 balance: ${bankAccount.balance}, success2: $success2 balance: ${bankAccount2.balance}');

  final john = Person(name: 'John Doe', age: 30, height: 1.80);
  print(john.printDescription());

  const complex = Complex(1, 2);
  const list = [
    Complex(1, 2),
    Complex(3, 4),
  ];

  final complex2 = Complex.real(11.0);
  print(complex2.realPart);

  final tempC = Temperature.celsius(39);
  final tempF = Temperature.fahrenheit(102);
  print(tempC.celsius);
  print(tempF.celsius);
  print(tempC.fahrenheit);
  print(tempF.fahrenheit);
  tempC.fahrenheit = 90;
  print(tempC.celsius);
}

class Temperature {
  Temperature.celsius(this.celsius);

  Temperature.fahrenheit(double fahrenheit) : celsius = (fahrenheit - 32) / 1.8;
  double celsius;
  double get fahrenheit => celsius * 1.8 + 32;
  set fahrenheit(double fahrenheit) => celsius = (fahrenheit - 32) / 1.8;
}

class Complex {
  const Complex(this.realPart, this.imaginaryPart);

  const Complex.zero()
      : realPart = 0,
        imaginaryPart = 0;

  const Complex.identity()
      : realPart = 1,
        imaginaryPart = 0;

  const Complex.real(this.realPart) : imaginaryPart = 0;

  const Complex.imaginary(this.imaginaryPart) : realPart = 0;
  final double realPart;
  final double imaginaryPart;
}

class BankAccount {
  double balance;
  final String accountHolder;

  BankAccount({this.balance = 0, required this.accountHolder});

  void deposit(double amount) {
    balance += amount;
  }

  bool withdraw(double amount) {
    if (balance > amount) {
      balance -= amount;
      return true;
    }
    return false;
  }
}

class Person {
  final String name;
  int age;
  double height;

  Person({required this.name, required this.age, required this.height});

  String printDescription() {
    return "My is $name. I'm $age years old, I'm $height meters tall";
  }
}
