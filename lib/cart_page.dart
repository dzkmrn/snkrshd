import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snkrshd/components/cart_item.dart';
import 'package:snkrshd/models/cart.dart';
import 'package:snkrshd/models/shoe.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text('My Cart'), 
          ),
          automaticallyImplyLeading: false,
        ),
        // appBar: AppBar(
        //   title: Text('My Cart'),
        // ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: value.getUserCart().length,
                  itemBuilder: (context, index) {
                    Shoe individualShoe = value.getUserCart()[index];
                    return CartItem(
                      shoe: individualShoe,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
