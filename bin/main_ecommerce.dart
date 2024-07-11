import 'dart:io';

import 'package:first_app/simple_ecommerce/cart.dart';
import 'package:first_app/simple_ecommerce/product.dart';

final allProducts = [
  Product(id: 1, name: 'apples', price: 1.60),
  Product(id: 2, name: 'bananas', price: 0.70),
  Product(id: 3, name: 'courgettes', price: 1.00),
  Product(id: 4, name: 'grapes', price: 2.00),
  Product(id: 5, name: 'mushrooms', price: 0.80),
  Product(id: 6, name: 'potatoes', price: 1.50),
];

final userOptions = {
  'a': allProducts[0],
  'b': allProducts[1],
  'c': allProducts[2],
  'g': allProducts[3],
  'm': allProducts[4],
  'p': allProducts[5],
};

void main() {
  final cart = Cart();
  String? userChoice = _askUserChoice();
  while (true) {
    if (userChoice == 'a') {
      _addItem(cart);
      userChoice = _askUserChoice();
    } else if (userChoice == 'v') {
      print(cart);
      userChoice = _askUserChoice();
    } else if (userChoice == 'c') {
      if (_successCheckout(cart)) {
        break;
      } else {
        userChoice = _askUserChoice();
      }
    }
  }
}

bool _successCheckout(Cart cart) {
  stdout.write('Total sum is ${cart.totalSum}, you pay: ');
  String? userPay = stdin.readLineSync();
  while (userPay != null) {
    if (userPay != null && double.tryParse(userPay) != null) {
      break;
    }
    stdout.write('Total sum is ${cart.totalSum}, you pay: ');
    userPay = stdin.readLineSync();
  }
  double? userMoney = double.tryParse(userPay!);
  if (userMoney! < cart.totalSum) {
    print('Not enough money');
    return false;
  } else {
    print('Change: ${userMoney - cart.totalSum}');
    return true;
  }
}

void _addItem(Cart cart) {
  print('Available products:');
  for (var product in allProducts) {
    print(
        '${product.name.replaceAll(product.name[0], '(${product.name[0]})')}: \$${product.price}');
  }
  stdout.write('Your choice: ');
  String? currChoice = stdin.readLineSync();
  while (!userOptions.containsKey(currChoice)) {
    stdout.write('Your choice: ');
    currChoice = stdin.readLineSync();
  }
  cart.add(userOptions[currChoice]!);
  print('${userOptions[currChoice]!.name} was added to cart!');
}

String? _askUserChoice() {
  stdout.write('What you want to do? (v)iew items, (a)dd item, (c)heckout: ');
  String? userChoice = stdin.readLineSync();
  while (userChoice != 'v' || userChoice != 'a' || userChoice != 'c') {
    if (userChoice == 'v' || userChoice == 'a' || userChoice == 'c') {
      break;
    }
    stdout.write('What you want to do? (v)iew items, (a)dd item, (c)heckout: ');
    userChoice = stdin.readLineSync();
  }
  return userChoice;
}
