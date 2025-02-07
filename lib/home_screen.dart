import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{

  @override
  State<HomeScreen> createState() {
    return _HomeScreen();
  }
}

class _HomeScreen extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("SHOP",
          style: TextStyle(
            letterSpacing: 20
            ),
          ),
          backgroundColor: Colors.white,
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 25),
              child: const Icon(Icons.person_2_outlined),
            ),
          ],
        ),
        bottomNavigationBar: Text("asdasd"),
      ),
    );
  }
}