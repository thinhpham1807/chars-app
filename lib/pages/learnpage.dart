import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LearnPage extends StatefulWidget {
  const LearnPage({Key? key}) : super(key: key);

  @override
  State<LearnPage> createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {



// Create a list of Lesson objects to hold the data for each lesson
List<Topic> data = [
  Topic(
    title: 'Chương 1',
    description: 'Learn about the basics of the Chinese language',
    // image: 'assets/images/learn/intro.png',
    lessons: [
      Lesson(
        title: 'Introduction',
        description: 'Learn about the basics of the Chinese language',
        // image: 'assets/images/learn/intro.png',
        // video: 'assets/videos/learn/intro.mp4',
      ),
      Lesson(
        title: 'Pronunciation',
        description: 'Learn about the basics of the Chinese language',
        // image: 'assets/images/learn/intro.png',
        // video: 'assets/videos/learn/intro.mp4',
      ),
      Lesson(
        title: 'Tones',
        description: 'Learn about the basics of the Chinese language',
        // image: 'assets/images/learn/intro.png',
        // video: 'assets/videos/learn/intro.mp4',
      ),
      Lesson(
        title: 'Pinyin',
        description: 'Learn about the basics of the Chinese language',
        // image: 'assets/images/learn/intro.png',
        // video: 'assets/videos/learn/intro.mp4',
      ),
    ],
  ),
  Topic(
    title: 'Chương 2',
    description: 'Learn about the basics of the Chinese language',
    // image: 'assets/images/learn/intro.png',
    lessons: [
      Lesson(
        title: 'Lesson 1',
        description: 'Learn about the basics of the Chinese language',
        // image: 'assets/images/learn/intro.png',
        // video: 'assets/videos/learn/intro.mp4',
      ),
      Lesson(
        title: 'Lesson 2',
        description: 'Learn about the basics of the Chinese language',
        // image: 'assets/images/learn/intro.png',
        // video: 'assets/videos/learn/intro.mp4',
      ),
      Lesson(
        title: 'Lesson 3',
        description: 'Learn about the basics of the Chinese language',
        // image: 'assets/images/learn/intro.png',
        // video: 'assets/videos/learn/intro.mp4',
      ),
      Lesson(
        title: 'Lesson 4',
        description: 'Learn about the basics of the Chinese language',
        // image: 'assets/images/learn/intro.png',
        // video: 'assets/videos/learn/intro.mp4',
      ),
    ],
  ),
  Topic(
    title: 'Chương 3',
    description: 'Learn about the basics of the Chinese language',
    // image: 'assets/images/learn/intro.png',
    lessons: [
      Lesson(
        title: 'OLOL',
        description: 'Learn about the basics of the Chinese language',
        // image: 'assets/images/learn/intro.png',
        // video: 'assets/videos/learn/intro.mp4',
      ),
      Lesson(
        title: 'Pronunciation',
        description: 'Learn about the basics of the Chinese language',
        // image: 'assets/images/learn/intro.png',
        // video: 'assets/videos/learn/intro.mp4',
      ),
      Lesson(
        title: 'Tones',
        description: 'Learn about the basics of the Chinese language',
        // image: 'assets/images/learn/intro.png',
        // video: 'assets/videos/learn/intro.mp4',
      ),
      Lesson(
        title: 'Pinyin',
        description: 'Learn about the basics of the Chinese language',
        // image: 'assets/images/learn/intro.png',
        // video: 'assets/videos/learn/intro.mp4',
      ),
    ],
  ),
];

  int _selectedTopic = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 245, 249),
      body: SafeArea(
        child: Column(
          children: [
            // Top bar
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 30, 40, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  // Search bar
                  Container(
                    height: 40,
                    width: 280,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(25),
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
                    child: const TextField (
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          CupertinoIcons.search,
                          color: Color(0xff0f4c75),
                        ),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          fontFamily: 'Andika New Basic',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          height: 1.25, // equivalent to line-height: 25px
                          letterSpacing: -0.02,
                          color: Color(0xFF0F4C75),
                        ),
                      ),
                    ),
                    
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
            const Text(
              'Topic',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Andika New Basic',
                color: Color(0xff0f4c75),
                letterSpacing: 0.4,
              ),
            ),

            // const SizedBox(height: 25),
            Container(
                height: 210,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: data.map((topic) {
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
                      child: InkWell(
                        child: Column(
                          children: [
                            // Lesson title
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    topic.title,
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
                                topic.description,
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
                        onTap: () {
                          setState(() {
                            _selectedTopic = data.indexOf(topic);
                            print(_selectedTopic);
                          });
                        },
                      ),
                    );
                  }).toList(),
                  )
            ),

            const SizedBox(height: 25),

            Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 40, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'My Progress',
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
            ),
            
            Container(
              // height to reach nav the height of the container
              height: MediaQuery.of(context).size.height - 550,
              // List view each lesson in the selected topic
              child: ListView(
                shrinkWrap: true,
                children: data[_selectedTopic].lessons.map((lesson) {
                  return Container(
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
                                CupertinoIcons.circle,
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
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}

class Topic {
  final String title;
  final String description;
  final List<Lesson> lessons;
  Topic({
    required this.title,
    required this.description,
    required this.lessons,
  });
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