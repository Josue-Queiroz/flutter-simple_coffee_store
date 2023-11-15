import 'package:coffe_shop/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  // Coffee for sale list
  final List<Coffee> _shop = [
    Coffee(
      name: "Ice Coffee",
      price: "4.10",
      imagePath: "lib/images/coffee-cup.png",
    ),
    Coffee(
      name: "Express",
      price: "3.00",
      imagePath: "lib/images/coffee-pot.png",
    ),
    Coffee(
      name: "Long black",
      price: "2.50",
      imagePath: "lib/images/coffee-cup.png",
    ),
    Coffee(
      name: "Late",
      price: "2.80",
      imagePath: "lib/images/hottea.png",
    ),
  ];

  // user cart
  final List<Coffee> _userCart = [];

  //get ciffee list
  List<Coffee> get coffeeShop => _shop;

  //get user cart
  List<Coffee> get userCart => _userCart;

  //add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  //remove item from cart

  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
