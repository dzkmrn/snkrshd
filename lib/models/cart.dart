import 'package:flutter/cupertino.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Jordan 1',
      price: '200',
      description: 'The first shoe of the Jordan series',
      imagePath: 'images/nike.jpeg',
    ),
    Shoe(
      name: 'Kyrie V',
      price: '233',
      description: 'Kyrie use this sheee',
      imagePath: 'images/kyrie.jpeg',
    ),
    Shoe(
      name: 'Air Force 1',
      price: '250',
      description: 'Got that white air force energy',
      imagePath: 'images/af.png',
    ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addToCart(Shoe shoe) {
    userCart.add(shoe);
  }

  void removeFromCart(Shoe shoe) {
    userCart.remove(shoe);
  }
}
