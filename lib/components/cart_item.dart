import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snkrshd/models/shoe.dart';
import 'package:snkrshd/models/cart.dart';

class CartItem extends StatefulWidget {
  final Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeFromCart() {
    Provider.of<Cart>(context, listen: false).removeFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: ListTile(
          leading: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Image.asset(widget.shoe.imagePath)),
          title: Text(
            widget.shoe.name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(widget.shoe.description),
          trailing: IconButton(
            onPressed: () {
              removeFromCart;
              print('removed from cart1');
            },
            icon: Icon(Icons.delete),
          ),
        ),
      ),
    );
  }
}
