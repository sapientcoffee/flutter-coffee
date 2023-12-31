import 'package:flutter/material.dart';
import '../models/coffee.dart';

/*

COFFEE TILE

This is the tile seen on the shop page.
User can add to cart by tapping the tile.

*/

class CoffeeTile extends StatelessWidget {
  final Coffee coffee;
  void Function()? onPressed;
  CoffeeTile({
    super.key,
    required this.coffee,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 10),
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: ListTile(
        leading: Image.asset(coffee.imagePath),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            coffee.name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        subtitle: Text('\$${coffee.price}'),
        trailing: IconButton(
          icon: Icon(
            Icons.arrow_forward,
            color: Colors.brown[300],
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
