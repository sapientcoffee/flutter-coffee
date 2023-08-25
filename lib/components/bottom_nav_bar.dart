import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GNav(
      color: Colors.grey[400],
      mainAxisAlignment: MainAxisAlignment.center,
      activeColor: Colors.grey[700],
      tabBackgroundColor: Colors.grey.shade300,
      tabBorderRadius: 24,
      tabActiveBorder: Border.all(color: Colors.white),
      tabs: const [
        GButton(
          icon: Icons.home,
          text: 'Shop',
        ),
        GButton(
          icon: Icons.shopping_bag_outlined,
          text: 'Cart',
        ),
      ],
    );
  }
}
