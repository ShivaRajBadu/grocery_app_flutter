import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[900],
      onTap: _onItemTap,
      items: [
        BottomNavigationBarItem(
            icon: const Icon(Icons.home_outlined),
            label: 'Home',
            backgroundColor: Colors.red[200]),
        BottomNavigationBarItem(
            icon: const Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
            backgroundColor: Colors.green[200]),
        BottomNavigationBarItem(
            icon: const Icon(Icons.person_2),
            label: 'Profile',
            backgroundColor: Colors.blue[200]),
      ],
    );
  }
}
