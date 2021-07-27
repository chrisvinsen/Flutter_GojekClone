import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gojek_clone/chat_screen.dart';
import 'package:gojek_clone/home_screen.dart';
import 'package:gojek_clone/order_screen.dart';
import 'package:gojek_clone/promo_screen.dart';

class MainScreen extends StatefulWidget {
  final String name;
  const MainScreen({required this.name});

  @override
  _MainScreenState createState() => _MainScreenState(name: this.name);
}

class _MainScreenState extends State<MainScreen> {
  String name;
  _MainScreenState({required this.name});

  int currentIndex = 0;
  List<Widget> _screens() => [
    HomeScreen(name: name),
    PromoScreen(),
    OrderScreen(),
    ChatScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = _screens();

    return SafeArea(
      child: Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          backgroundColor: Colors.green,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white38,
          showUnselectedLabels: false,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'Promos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat',
            ),
          ],
        ),
      ),
    );
  }
}


