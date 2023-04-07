
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LearnPage extends StatefulWidget {
  const LearnPage({Key? key}) : super(key: key);

  @override
  State<LearnPage> createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {

// Create a list of Lesson objects to hold the data for each lesson
List<Lesson> lessons = [
  Lesson(
    title: 'Lesson 1',
    description: 'Introduction to Chinese characters',
  ),
  Lesson(
    title: 'Lesson 2',
    description: 'Basic strokes and radicals',
  ),
  Lesson(
    title: 'Lesson 3',
    description: 'Common characters and their meanings',
  ),
  // Add more lessons as needed
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 245, 249),
      body: SafeArea(
        child: Column(
          children: [
            // Top bar
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 30, 50, 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Learn \nChinese',
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
                  const Icon(
                    CupertinoIcons.person_crop_circle_fill,
                    size: 45,
                    color: Color(0xff0f4c75),
                  ),

                ],
                
                // List view of all the lessons
              ),
            ),

            const SizedBox(height: 25),
            Text(
              'Lessons',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Andika New Basic',
                color: Color(0xff0f4c75),
                letterSpacing: 0.4,
              ),
            ),

            const SizedBox(height: 25),
            Container(
                height: 210,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: lessons.map((lesson) {
                    return Container(
                      width: 210,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 240, 245, 249),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(-7, -6),
                            blurRadius: 7,
                            color: Color.fromRGBO(255, 255, 255, 0.6),
                          ),
                          BoxShadow(
                            offset: Offset(-2, -2),
                            blurRadius: 2,
                            color: Color.fromRGBO(255, 255, 255, 0.4),
                          ),
                          BoxShadow(
                            offset: Offset(1, 2),
                            blurRadius: 4,
                            color: Color(0xFFA5CDE8),
                          ),
                          BoxShadow(
                            offset: Offset(4, 4),
                            blurRadius: 8,
                            color: Color.fromRGBO(143, 181, 206, 0.75),
                          ),
                        ]
                      ),
                      child: Column(
                        children: [
                          // Lesson title
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  lesson.title,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Andika New Basic',
                                    color: Color(0xff0f4c75),
                                    letterSpacing: 0.4,
                                  ),
                                ),
                                const Icon(
                                  CupertinoIcons.book_fill,
                                  size: 30,
                                  color: Color(0xff0f4c75),
                                ),
                              ],
                            ),
                          ),
                          // Lesson description
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                            child: Text(
                              lesson.description,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Andika New Basic',
                                color: Color(0xff0f4c75),
                                letterSpacing: 0.4,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                  )
            ),
          ],
        ),
      ),
    );
  }
}

// Define the Lesson class to hold the data for each lesson
class Lesson {
  final String title;
  final String description;

  Lesson({
    required this.title,
    required this.description,
  });
}