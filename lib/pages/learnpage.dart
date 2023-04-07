import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 245, 249),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: const Color.fromARGB(255, 240, 245, 249),
        color: const Color.fromARGB(255, 121, 162, 189),
        animationDuration: const Duration(milliseconds: 300),
        // onTap: (value) {
        //   //Handle button tap
        //   print(value);
        //   if (value == 1) {
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(
        //         builder: (context) => const HomePage(),
        //       ),
        //     );
        //   }
        // },
        items: const [
          Icon(Icons.home_outlined, size: 30, color: Colors.white),
          Icon(CupertinoIcons.book, size: 30, color: Colors.white),
          Icon(Icons.casino_outlined, size: 30, color: Colors.white),
          Icon(CupertinoIcons.camera, size: 30, color: Colors.white),
        ],
      ),
    );
  }
}
