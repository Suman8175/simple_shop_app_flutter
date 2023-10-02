import 'package:flutter/material.dart';
import 'package:simple_shop_app_flutter/cart_page.dart';

import 'home_page.dart';

class ShoopingAppMainPage extends StatefulWidget {
  const ShoopingAppMainPage({super.key});

  @override
  State<ShoopingAppMainPage> createState() => _ShoopingAppMainPageState();
}

class _ShoopingAppMainPageState extends State<ShoopingAppMainPage> {
  int currentPage = 0;
  List<Widget> pageIndex = const [HomePage(), CartPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: pageIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 20,
        unselectedFontSize: 0,
        currentIndex: currentPage,
        iconSize: 35,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
      ),
    );
  }
}
