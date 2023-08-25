import 'package:flutter/material.dart';
import '../components/bottom_nav_bar.dart';
import '../const.dart';
import 'about_page.dart';
import 'cart_page.dart';
import 'shop_page.dart';

/*

HOMEPAGE

This homepage is like a skeleton template for all other pages.
It contains a drawer and the bottom nav bar,
In the body, we can display either the shop page or cart page.

*/

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // navigate bottom bar
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages
  final List<Widget> _pages = [
    // shop page
    const ShopPage(),

    // cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Padding(
              padding: EdgeInsets.all(14.0),
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(height: 80),

                // logo
                Image.asset(
                  "lib/images/espresso.png",
                  height: 160,
                ),

                const Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Divider(
                    color: Colors.white,
                  ),
                ),

                // home
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const ListTile(
                      leading: Icon(
                        Icons.home,
                      ),
                      title: Text(
                        "Home",
                      ),
                    ),
                  ),
                ),

                // about
                GestureDetector(
                  onTap: () {
                    // pop drawer
                    Navigator.pop(context);

                    // go to new page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AboutPage(),
                      ),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.info,
                      ),
                      title: Text(
                        "About",
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // logout
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Padding(
                padding: EdgeInsets.only(left: 25.0, bottom: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.logout,
                  ),
                  title: Text(
                    "Logout",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
