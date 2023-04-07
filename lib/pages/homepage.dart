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
      body: SafeArea(
        child: Column(
          children: [
            // app bar
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 30, 50, 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Name
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Welcome \nback, Tina 👋',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Andika New Basic',
                          color: Color(0xff0f4c75),
                          letterSpacing: 0.4,
                        ),
                      ),
                    ],
                  ),
                  // Avatar
                  const Icon(
                    CupertinoIcons.person_crop_circle_fill,
                    size: 45,
                    color: Color(0xff0f4c75),
                  ),
                ],
              ),
            ),

            // search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: const Color.fromARGB(
                        255, 206, 229, 251), //rgba(206, 229, 251, 1)
                    width: 2,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 206, 229, 251),
                      offset: Offset(0, 8),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: 'Search',
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // fact card and continous study
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 170,
                  width: 170,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 240, 245, 249),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(-7.0, -6.0),
                        blurRadius: 7.0,
                        color: Colors.white.withOpacity(0.6),
                      ),
                      BoxShadow(
                        offset: const Offset(-2.0, -2.0),
                        blurRadius: 2.0,
                        color: Colors.white.withOpacity(0.4),
                      ),
                      const BoxShadow(
                        offset: Offset(1.0, 2.0),
                        blurRadius: 4.0,
                        color: Color(0xFFA5CDE8),
                      ),
                      const BoxShadow(
                        offset: Offset(4.0, 4.0),
                        blurRadius: 8.0,
                        color: Color.fromRGBO(143, 181, 206, 0.75),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'BẠN CÓ BIẾT?',
                        style: TextStyle(
                          fontFamily: 'Archivo',
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          height: 2.35, // equivalent to line-height: 40px
                          letterSpacing: -0.02,
                          color: Color(0xFF0F4C75),
                          shadows: [
                            Shadow(
                              color: Color(0xFFE3ECF2),
                              offset: Offset(0, 2),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Image.asset(
                        'lib/resources/images/marie_curie.jpeg',
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 170,
                  width: 170,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 152, 193, 220),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(-7.0, -6.0),
                        blurRadius: 7.0,
                        color: Colors.white.withOpacity(0.6),
                      ),
                      BoxShadow(
                        offset: const Offset(-2.0, -2.0),
                        blurRadius: 2.0,
                        color: Colors.white.withOpacity(0.4),
                      ),
                      const BoxShadow(
                        offset: Offset(1.0, 2.0),
                        blurRadius: 4.0,
                        color: Color(0xFFA5CDE8),
                      ),
                      const BoxShadow(
                        offset: Offset(4.0, 4.0),
                        blurRadius: 8.0,
                        color: Color.fromRGBO(143, 181, 206, 0.75),
                      ),
                    ],
                  ),
                  child: Column(
                    children: const [
                      Text(
                        'TIẾP TỤC\nHỌC BÀI',
                        style: TextStyle(
                          fontFamily: 'Archivo',
                          fontWeight: FontWeight.w800,
                          fontSize: 17,
                          height: 1.41, // equivalent to line-height: 24px
                          letterSpacing: -0.02,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              color: Colors.black12,
                              offset: Offset(0, 4),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
            // achievements card

            // statistical board
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: const Color.fromARGB(255, 240, 245, 249),
        color: const Color.fromARGB(255, 121, 162, 189),
        animationDuration: const Duration(milliseconds: 300),
        onTap: (value) {
          //Handle button tap
          if (value == 1) {
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
      ),
    );
  }
}
