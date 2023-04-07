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
              padding: const EdgeInsets.fromLTRB(45, 30, 40, 0),
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
                          fontFamily: 'Andika New Basic',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          height: 1.25, // equivalent to line-height: 25px
                          letterSpacing: -0.02,
                          color: Color(0xFF0F4C75),
                        ),
                        textAlign: TextAlign.start,
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

            const SizedBox(height: 30),

            // search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                height: 35,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  border: Border.all(
                    color: const Color(0xFFCEE5FB),
                    width: 1,
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(-1.0, -1.0),
                      blurRadius: 1.0,
                      color: Colors.white.withOpacity(0.9),
                    ),
                    BoxShadow(
                      offset: const Offset(-4.0, -5.0),
                      blurRadius: 7.0,
                      color: Colors.white.withOpacity(0.8),
                    ),
                    const BoxShadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 4.0,
                      color: Color.fromRGBO(83, 131, 164, 0.4),
                    ),
                    const BoxShadow(
                      offset: Offset(4.0, 5.0),
                      blurRadius: 11.0,
                      color: Color.fromRGBO(158, 193, 217, 0.7),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20.0),
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

            const SizedBox(height: 40),

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
                      Row(
                        children: [
                          Image.asset(
                            'lib/resources/images/marie_curie.png',
                            height: 50,
                          ),
                        ],
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
    );
  }
}
