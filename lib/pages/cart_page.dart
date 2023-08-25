import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/cart_tile.dart';
import '../components/my_button.dart';
import '../models/coffee.dart';
import '../models/coffee_shop.dart';

/*

CART PAGE

  - User can check their cart and remove items if necessary
  - User can tap 'Pay now' button $

*/

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // delete item from cart
  void removeItemFromCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeItemFromCart(coffee);
  }

  // pay now button tapped
  void payNow() {
    /*

    integrate your payment services in this method

    */
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => Column(
        children: [
          // heading
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 25.0, top: 25, bottom: 25),
                child: Text(
                  'Your Cart',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),

          // list of cart items
          Expanded(
            child: ListView.builder(
              itemCount: value.userCart.length,
              itemBuilder: (context, index) {
                // get individual cart items
                Coffee coffee = value.userCart[index];

                // return as a list tile
                return CartTile(
                  coffee: coffee,
                  onPressed: () => removeItemFromCart(coffee),
                );
              },
            ),
          ),

          // pay button
          MyButton(text: "Pay now", onTap: payNow)
        ],
      ),
    );
  }
}
