
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

            const SizedBox(height: 25),

            // search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
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
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(14, 20, 14, 0),
                        child: Text(
                          'BẠN CÓ BIẾT?',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Andika New Basic',
                            color: Color(0xff0f4c75),
                            letterSpacing: -0.2,
                          ),
                        ),
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
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 25, 30, 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                            // shadows: [
                            //   Shadow(
                            //     color: Colors.black.withOpacity(0.25),
                            //     offset: Offset(0, 4),
                            //     blurRadius: 4,
                            //   ),
                            // ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
            // achievements card

            // statistical board
          ],
        ),
      ),

    );
  }
}
