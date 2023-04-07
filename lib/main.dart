import 'package:chars/pages/gamepage.dart';
import 'package:chars/pages/learnpage.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:chars/pages/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _getPage(_selectedIndex),
        bottomNavigationBar: CurvedNavigationBar(
          height: 65,
          backgroundColor: const Color.fromARGB(255, 240, 245, 249),
          color: const Color.fromARGB(255, 121, 162, 189),
          animationDuration: const Duration(milliseconds: 300),
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: const [
            Icon(Icons.home_outlined, size: 30, color: Colors.white),
            Icon(CupertinoIcons.book, size: 30, color: Colors.white),
            Icon(Icons.casino_outlined, size: 30, color: Colors.white),
            Icon(CupertinoIcons.camera, size: 30, color: Colors.white),
          ],
        ),
      ),
    );
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return const HomePage();
      case 1:
        return const LearnPage();
      case 2:
        return const GamePage();
      case 3:
        return const HomePage();
      default:
        return const HomePage();
    }
  }
}
