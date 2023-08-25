import 'package:flutter/material.dart';
import '../const.dart';
import 'home_page.dart';

/*

INTRO PAGE

The very first page to greet the user

*/

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset(
                "lib/images/espresso.png",
                height: 200,
              ),
            ),

            const SizedBox(height: 48),

            // heading
            Text(
              "Brew Day",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.brown[800],
                fontSize: 24,
              ),
            ),

            const SizedBox(height: 24),

            // sub heading
            const Text(
              "How do you like your coffee?",
              style: TextStyle(
                color: Colors.brown,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 48),

            // enter shop button
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(25),
                margin: const EdgeInsets.symmetric(horizontal: 25),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.brown[700],
                    borderRadius: BorderRadius.circular(12)),
                child: const Text(
                  "Enter Shop",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
