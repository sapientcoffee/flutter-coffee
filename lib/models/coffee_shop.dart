import 'package:flutter/material.dart';
import 'coffee.dart';

class CoffeeShop  extends ChangeNotifier {
  //coffee for sale list
  final List<Coffee> _shop = [
    Coffee(
      name: "v60",
      price: "4.00",
      imagePath: "lib/images/pot.png",
    ),
    Coffee(
      name: "Espresso",
      price: "3.00",
      imagePath: "lib/images/coffee-machine.png",
    ),
    Coffee(
      name: "aeropress",
      price: "4.00",
      imagePath: "lib/images/aeropress.png",
    ),
    Coffee(
      name: "Milky Coffee",
      price: "3.50",
      imagePath: "lib/images/coffee-cup.png",
    ),


  ];

  // user cart
  List<Coffee> _userCart = [];

  // get coffee list
  List<Coffee> get coffeeShop => _shop;

  // get user cart
  List<Coffee> get userCart => _userCart;

  // add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}