
import 'package:first_app/simple_ecommerce/item.dart';
import 'package:first_app/simple_ecommerce/product.dart';

class Cart {
  double totalSum = 0.0;
  Map<int, Item> cartItems = {};

  Cart();

  void add(Product product) {
    if (!cartItems.containsKey(product.id)) {
      cartItems[product.id] = Item(product: product, quantity: 1);
    } else {
      cartItems[product.id]!.quantity += 1;
    }
    totalSum += product.price;
  }

  @override
  String toString() {
    if (cartItems.isEmpty) {
      return 'Cart is empty';
    }
    String output = cartItems.values.map((cartItem) {
      return '${cartItem.quantity} x ${cartItem.product.name} = \$${cartItem.product.price * cartItem.quantity}';
    }).join('\n');
    return '----------\n$output\nTotal: \$$totalSum\n----------';
  }
}

