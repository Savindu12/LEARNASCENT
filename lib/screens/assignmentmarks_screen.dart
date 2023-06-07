import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learnascent_lms/screens/profile.dart';
import 'package:learnascent_lms/screens/base_screen.dart';



class assignmentMarks extends StatefulWidget {

  const assignmentMarks ({Key? key}) : super(key: key);

  @override
  _assignmentMarksState createState() => _assignmentMarksState();

}

class _assignmentMarksState extends State<assignmentMarks>{

  Color backgroundColor = const Color(0xFF0C195C);

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(),
              Body()
           ],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body ({Key? key}): super (key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 500, // Set the desired height
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 20.0,
        ),
        children: [
          // Grid items go here
          Container(
            child: const SizedBox(
              width: 170.0,
              height: 180.0,
              child: Card(
                color: Color.fromARGB(255, 245, 188, 124),
                elevation: 2.0,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        SizedBox(height: 10.0),
                        Text(
                          "MAD Group Assignment", textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        SizedBox(height: 25.0),
                        Text("Completed", style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0
                        )),
                        SizedBox(height: 5.0),
                        Text("Marks: 90%", textAlign: TextAlign.center, style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0
                        ),),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: const SizedBox(
              width: 170.0,
              height: 180.0,
              child: Card(
                color: Color.fromARGB(249, 170, 151, 238),
                elevation: 2.0,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        SizedBox(height: 10.0),
                        Text(
                          "Cryptography Final Quiz", textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        SizedBox(height: 25.0),
                        Text("Completed", style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0
                        ),),
                        SizedBox(height: 5.0),
                        Text("Marks: 88%", textAlign: TextAlign.center, style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0
                        ),),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
           child: const SizedBox(
             width: 170.0,
             height: 180.0,
             child: Card(
               color: Color.fromARGB(240, 61, 241, 91),
               elevation: 2.0,
               child: Center(
                 child: Padding(
                   padding: EdgeInsets.all(10.0),
                   child: Column(
                     children: [
                       SizedBox(height: 10.0),
                       Text(
                         "IAS Coursework", textAlign: TextAlign.center,
                         style: TextStyle(
                           color: Colors.black,
                           fontWeight: FontWeight.bold,
                           fontSize: 20.0,
                         ),
                       ),
                       SizedBox(height: 25.0),
                       Text("Completed", style: TextStyle(
                           color: Colors.black,
                           fontWeight: FontWeight.bold,
                           fontSize: 15.0
                       )),
                       SizedBox(height: 5.0),
                       Text("Marks: 75%", textAlign: TextAlign.center, style: TextStyle(
                           color: Colors.black,
                           fontWeight: FontWeight.bold,
                           fontSize: 25.0
                       ),),
                     ],
                   ),
                 ),
               ),
             ),
           ),
          ),
          Container(
            child: const SizedBox(
              width: 170.0,
              height: 180.0,
              child: Card(
                color: Color.fromARGB(232, 241, 97, 169),
                elevation: 2.0,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        SizedBox(height: 10.0),
                        Text(
                          "Maths Mid Exam", textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        SizedBox(height: 25.0),
                        Text("Completed", style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0
                        )),
                        SizedBox(height: 5.0),
                        Text(
                          "Marks: 95%", textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
          // Add more grid items as needed
        ],
      ),
    );
  }
}

class AppBar extends StatelessWidget {

  const AppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.1, 0.5],
          colors: [
            Color(0xFF0C195C),
            Color(0xFF0C119C),
          ],
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BaseScreen(),
                      )
                  );
              },
              ),
              Align(
                alignment: Alignment.centerLeft,
                child:IconButton(
                color: Colors.white,
                iconSize: 30,
                icon: Icon(
                  Icons.person
                ),
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );},
              ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Assignment Marks',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

}
