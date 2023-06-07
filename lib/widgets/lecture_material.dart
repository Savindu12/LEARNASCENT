import 'package:flutter/material.dart';
import 'package:learnascent_lms/screens/details_screen.dart';
import 'package:learnascent_lms/screens/LecureRouting/AM_Screen.dart';
import 'package:learnascent_lms/screens/LecureRouting/IAS_screen.dart';
import 'package:learnascent_lms/screens/LecureRouting/Security_Screen.dart';
import 'package:learnascent_lms/screens/featuerd_screen.dart';
import 'package:learnascent_lms/screens/assignmentmarks_screen.dart';

class lectureMaterial extends StatelessWidget {

  const lectureMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, bottom: 25.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  // Navigate to schedule page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ScheduleScreen()),
                  );
                },
                child: Container(
                  width: 155,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 206, 236, 254),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10, right: 10),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            'Schedule',
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigate to marks page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const assignmentMarks()),
                  );
                },
              child: Container(
                width: 175,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 239, 224, 255),
                ),
                padding: const EdgeInsets.only(top: 40),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10, right: 10),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          'Marks',
                          style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Container(
            width: 345,
            padding: const EdgeInsets.all(10),
            //color: Colors.red,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 186, 182, 182),
                      blurRadius: 5.0,
                      offset: Offset(0, 5))
                ]),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecurityScreen(title: "IAS")),
                );
              },
              child: Row(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    child: const Image(image: AssetImage('lib/assets/cyber-security.png'),),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    "Information And Security ",
                    style: TextStyle(
                        color: Colors.black,
                        //fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )
                ],
              ) ,
            ),

          ),

          const SizedBox(height: 15),
          Container(
            width: 345,
            padding: const EdgeInsets.all(10),
            // color: Colors.red,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 186, 182, 182),
                      blurRadius: 5.0,
                      offset: Offset(0, 5))
                ]),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AMScreen(title: "MATHS")),
                );
              },
              child: Row(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 231, 231, 231),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Image(image: AssetImage('lib/assets/MATHS.png'),),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    "Advanced Mathematics",
                    style: TextStyle(
                        color: Colors.black,
                        //fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            width: 345,
            padding: const EdgeInsets.all(10),
            //color: Colors.red,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 186, 182, 182),
                      blurRadius: 5.0,
                      offset: Offset(0, 5))
                ]),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const IASScreen(title: 'ADBMS')),
                );
              },
              child: Row(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    child: const Image(image: AssetImage('lib/assets/security.png'),),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 231, 231, 231),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    "Database Management ",
                    style: TextStyle(
                        color: Colors.black,
                        //fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )
                ],
              ),
            ),

          ),
          const SizedBox(height: 15),
          Container(
            width: 345,
            padding: const EdgeInsets.all(10),
            // color: Colors.red,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 186, 182, 182),
                      blurRadius: 5.0,
                      offset: Offset(0, 5))
                ]),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DetailsScreen(title: 'MAD')),
                );
              },
              child: Row(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    child: const Image(image: AssetImage('lib/assets/MAD.png')),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 231, 231, 231),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    "Mobile Application Development",
                    style: TextStyle(
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}