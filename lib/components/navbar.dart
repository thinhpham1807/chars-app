import 'package:chars/pages/gamepage.dart';
import 'package:chars/pages/learnpage.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/homepage.dart';

class NavBar extends StatelessWidget {
  const NavBar(int selectedIndex, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      height: 65,
      backgroundColor: const Color.fromARGB(255, 240, 245, 249),
      color: const Color.fromARGB(255, 121, 162, 189),
      animationDuration: const Duration(milliseconds: 300),

      onTap: (value) {
        //Handle button tap
        print(value);
        if (value == 0) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
          );
        } else if (value == 1) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LearnPage(),
            ),
          );
        } else if (value == 2) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const GamePage(),
            ),
          );
        } else if (value == 3) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
          );
        }
      },
      items: const [
        Icon(Icons.home_outlined, size: 30, color: Colors.white),
        Icon(CupertinoIcons.book, size: 30, color: Colors.white),
        Icon(Icons.casino_outlined, size: 30, color: Colors.white),
        Icon(CupertinoIcons.camera, size: 30, color: Colors.white),
      ],
    );
  }


}