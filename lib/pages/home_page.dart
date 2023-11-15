import 'package:coffe_shop/components/bottom_nav_bar.dart';
import 'package:coffe_shop/const.dart';
import 'package:coffe_shop/pages/cart_page.dart';
import 'package:coffe_shop/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //navigate bar
  int _selectedidex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedidex = index;
    });
  }

  //pages
  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedidex],
    );
  }
}
