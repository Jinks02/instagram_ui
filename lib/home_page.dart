import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/shop_screen.dart';
import 'package:instagram_ui/screens/home_screen.dart';
import 'package:instagram_ui/screens/myAccount_screen.dart';
import 'package:instagram_ui/screens/reels_screen.dart';
import 'package:instagram_ui/screens/search_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _changeBottomNavBar(int index) {
    // bottom bar navigation
    setState(() {
      _selectedIndex = index;
    });
  }

  // screens for each bottom tabs
  final List<Widget> _bottomBarTabScreensList = [
    HomeScreen(),
    SearchScreen(),
    ReelsScreen(),
    ShopScreen(),
    MyAccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bottomBarTabScreensList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType
            .fixed, // specify this when there are more than 3 or 4 items
        onTap: _changeBottomNavBar,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.videocam_rounded), label: 'Reels'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: 'Shop'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'My Account'),
        ],
      ),
    );
  }
}
