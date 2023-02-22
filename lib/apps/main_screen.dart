import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

import 'home/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  late final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: const [HomeScreen(), HomeScreen(), HomeScreen(), HomeScreen()],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        onItemSelected: (index) => setState(() {
          _currentIndex = index;
          _pageController.animateToPage(index,
              duration: const Duration(milliseconds: 300), curve: Curves.ease);
        }),
        containerHeight: 65,
        items: [
          BottomNavyBarItem(
            icon: const Icon(Icons.home,size: 30),
            title: const Text('Home'),
            activeColor: Colors.red,
          ),
          BottomNavyBarItem(
              icon: const Icon(Icons.shopping_bag_outlined,size: 30),
              title: const Text('Shop'),
              activeColor: Colors.purpleAccent),
          BottomNavyBarItem(
              icon: const Icon(Icons.favorite_outline,size: 30),
              title: const Text('Favourite'),
              activeColor: Colors.pink),
          BottomNavyBarItem(
              icon: const Icon(Icons.perm_identity,size: 30),
              title: const Text('Person'),
              activeColor: Colors.blue),
        ],
      ),
    );
  }
}