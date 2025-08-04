import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'Shoppinghome.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedIndex = 0;
  late final List<Widget> page;

  @override
  void initState() {
    super.initState();
    page = [
      HomeShop(),
      navBarPage(Icons.search),
      navBarPage(Icons.shopping_cart),
      navBarPage(Icons.person),
    ];
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: FlashyTabBar(
        animationDuration: Duration(milliseconds: 300),
        animationCurve: Curves.linear,
        backgroundColor:Colors.deepOrangeAccent.shade100,
        height: 60,
        items: [
          FlashyTabBarItem(
            icon: Icon(Icons.home,),
            title: Text('Home',),
            activeColor: Colors.deepOrange,
            inactiveColor: Colors.deepOrange,
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
            activeColor: Colors.deepOrange,
            inactiveColor: Colors.deepOrange,
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Shopping cart'),
            activeColor: Colors.deepOrange,
            inactiveColor: Colors.deepOrange,
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
            activeColor: Colors.deepOrange,
            inactiveColor: Colors.deepOrange,
          ),
        ],
        selectedIndex: selectedIndex,
        showElevation: true,
        onItemSelected: (index) =>
            setState(() {
              selectedIndex = index;
            }),
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
