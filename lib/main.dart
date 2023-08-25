import 'package:flutter/material.dart';
import 'package:myapp/models/coffee_shop.dart';
import 'package:myapp/pages/intro_page.dart';
import 'package:provider/provider.dart';
import 'pages/home_page.dart';
/*

START HERE:

Hello! This coffee shop app with huge influence from Mitch Koko.

- Components: contains different modular parts of the app (bottom nav bar, buttons, tiles, etc.)
- Images
- Model: this contains the structure of how we want to store and manipulate data in the shop
- Pages

*/



void main() {
  // lets run our app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /*

    Note: STATE MANAGEMENT! For dealing with states on multiple different screens..

    This app is using Provider for a simple state management solution.

    For the purpose of this app, where the functionality is simply
    adding and removing items to the users cart, and finally leading to a payment page,
    provider will suffice.

    Lets begin by showing the intro page

    */
    return ChangeNotifierProvider(
      create: (context) => CoffeeShop(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
  }
}
