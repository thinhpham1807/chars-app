import 'package:flutter/material.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 245, 249),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.fromLTRB(45, 30, 40, 0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const Center(
                child: Text(
                  'What is your favorite color?',
                  style: TextStyle(
                    fontFamily: 'Andika New Basic',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    height: 1.25, // equivalent to line-height: 25px
                    letterSpacing: -0.02,
                    color: Color(0xFF0F4C75),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),

          // ListView choices answers
          Padding(
            padding: const EdgeInsets.fromLTRB(45, 30, 40, 0),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      'A - Red',
                      style: TextStyle(
                        fontFamily: 'Andika New Basic',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        height: 1.25, // equivalent to line-height: 25px
                        letterSpacing: -0.02,
                        color: Color(0xFF0F4C75),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      'B - Blue',
                      style: TextStyle(
                        fontFamily: 'Andika New Basic',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        height: 1.25, // equivalent to line-height: 25px
                        letterSpacing: -0.02,
                        color: Color(0xFF0F4C75),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      'C - Green',
                      style: TextStyle(
                        fontFamily: 'Andika New Basic',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        height: 1.25, // equivalent to line-height: 25px
                        letterSpacing: -0.02,
                        color: Color(0xFF0F4C75),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  
                ),
                const SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      'D - Yellow',
                      style: TextStyle(
                        fontFamily: 'Andika New Basic',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        height: 1.25, // equivalent to line-height: 25px
                        letterSpacing: -0.02,
                        color: Color(0xFF0F4C75),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            )
          )
        ],
      ),
    );

// Column(
//   children: [
//     SizedBox(height: 20),
//     Container(
//       width: MediaQuery.of(context).size.width * 0.8,
//       height: 100,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 2,
//             blurRadius: 5,
//             offset: const Offset(0, 3),
//           ),
//         ],
//       ),
//       child: const Center(
//         child: Text(
//           'What is your favorite color?',
//           style: TextStyle(
//             fontFamily: 'Andika New Basic',
//             fontStyle: FontStyle.normal,
//             fontWeight: FontWeight.w700,
//             fontSize: 20,
//             height: 1.25, // equivalent to line-height: 25px
//             letterSpacing: -0.02,
//             color: Color(0xFF0F4C75),
//           ),
//           textAlign: TextAlign.center,
//         ),
//       ),
//     ),
//     SizedBox(height: 20),
//     Expanded(
//       child: ListView.builder(
//         itemCount: 4,
//         itemBuilder: (BuildContext context, int index) {
//           return Container(
//             margin: const EdgeInsets.symmetric(vertical: 10),
//             width: MediaQuery.of(context).size.width * 0.8,
//             height: 50,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(10),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.withOpacity(0.5),
//                   spreadRadius: 2,
//                   blurRadius: 5,
//                   offset: const Offset(0, 3),
//                 ),
//               ],
//             ),
//             child: Center(
//               child: Text(
//                 'Choice ${index + 1}',
//                 style: TextStyle(
//                   fontFamily: 'Andika New Basic',
//                   fontStyle: FontStyle.normal,
//                   fontWeight: FontWeight.w700,
//                   fontSize: 20,
//                   height: 1.25, // equivalent to line-height: 25px
//                   letterSpacing: -0.02,
//                   color: Color(0xFF0F4C75),
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//           );
//         },
//       ),
//     ),
//   ],
// )

  }
}
