import 'package:flutter/material.dart';
import 'package:myapp/components/bottom_nav_bar.dart';
import 'package:myapp/const.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }
}
