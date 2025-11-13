
import 'package:farmerwealthapp/farmer_nav/account/AccountScreen.dart';
import 'package:farmerwealthapp/farmer_nav/dashboard/dashboard.dart';
import 'package:farmerwealthapp/farmer_nav/feed/FeedScreen.dart';
import 'package:flutter/material.dart';


class FarmerNav extends StatefulWidget {
  const FarmerNav({super.key});

  @override
  State<FarmerNav> createState() => _FarmerNavState();
}

class _FarmerNavState extends State<FarmerNav> {
  int _selectedIndex = 1;

  final List<Widget> _screens = const [
    FeedScreen(),
    DashboardScreen(),
    AccountScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.article_outlined),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
