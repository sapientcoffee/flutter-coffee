import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/coffee_tile.dart';
import '../models/coffee.dart';
import '../models/coffee_shop.dart';
import 'coffee_order_page.dart';

/*

SHOP PAGE

User can browse the coffees that are for sale

*/

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // coffee page
  void goToCoffeePage(Coffee coffee) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CoffeeOrderPage(
          coffee: coffee,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // heading
          const Padding(
            padding: EdgeInsets.only(left: 25.0, top: 25),
            child: Text(
              'How do you like your coffee?',
              style: TextStyle(
                //fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          const SizedBox(height: 25),

          // list of coffee
          Expanded(
            child: ListView.builder(
              itemCount: value.coffeeShop.length,
              itemBuilder: (context, index) {
                // get individual coffee
                Coffee eachCoffee = value.coffeeShop[index];
                // return the tile for this coffee
                return CoffeeTile(
                  coffee: eachCoffee,
                  onPressed: () => goToCoffeePage(eachCoffee),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
