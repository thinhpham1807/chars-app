
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
              padding: const EdgeInsets.symmetric(horizontal: 54, vertical: 50),
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
                    size: 50,
                    color: Color(0xff0f4c75),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 44.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(50),
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

            // achievements card

            // statistical board
          ],
        ),
      ),

    );
  }
}
