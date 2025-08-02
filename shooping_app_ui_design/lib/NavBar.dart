import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'HomePage.dart';
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
  late final List<Widget> page;

  @override
  void initState() {
    super.initState();
    page = [
      Homepage(),
      navBarPage(Icons.favorite),
      navBarPage(Icons.shopping_cart),
      navBarPage(Icons.person),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        child: GNav(
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
          color: Colors.white,
          activeColor: Colors.black,
          gap: 6,
          tabBackgroundGradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 176, 210, 238),
              Colors.deepPurple,
            ],
          ),
          tabShadow: const [BoxShadow(color: Colors.grey, blurRadius: 1)],
          padding: const EdgeInsets.all(12),
          tabs: const [
            GButton(icon: Icons.home, text: "Home"),
            GButton(icon: Icons.favorite_outlined, text: "Favorites"),
            GButton(icon: Icons.shopping_cart, text: "Cart"),
            GButton(icon: Icons.person, text: "Profile"),
          ],
          onTabChange: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
      body: page[selectedIndex],
    );
  }

  Widget navBarPage(IconData iconName) {
    return Center(
      child: Icon(iconName, size: 100, color: Colors.black),
    );
  }
}
