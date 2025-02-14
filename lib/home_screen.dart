import 'package:adidas/adidas_screen.dart';
import 'package:adidas/fav_screen.dart';
import 'package:adidas/search_screen.dart';
import 'package:adidas/shopping_screen.dart';
import 'package:adidas/home_content_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedindex = 0;

  final Map<int, Map<String, Widget>> _navigationMap = {
    0: {"title": const Text("Home"), "screen": HomeContentScreen()},
    1: {"title": const Text("Search"), "screen": const SearchScreen()},
    2: {"title": const Text("Favorite"), "screen": const FavoriteScreen()},
    3: {"title": const Text("Cart"), "screen": const ShoppingScreen()},
    4: {"title": const Text("Adidas"), "screen": const AdidasScreen()},
  };

  void onItemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: const EdgeInsets.only(left: 0),
          child: const Text(
            "SHOP",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              letterSpacing: 15,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 25),
            child: const Icon(Icons.person_2_outlined),
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: const Color.fromARGB(255, 240, 240, 240),
            height: 2.0,
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: IndexedStack(
          index: _selectedindex,
          children:
              _navigationMap.values.map((page) => page["screen"]!).toList(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedindex,
        onTap: onItemTapped,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/logo.png", width: 40, height: 40),
            label: "",
            backgroundColor: Colors.white,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "",
            backgroundColor: Colors.white,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: "",
            backgroundColor: Colors.white,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: "",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon:
                Image.asset("assets/icons/adiclub.png", width: 70, height: 70),
            label: "",
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
