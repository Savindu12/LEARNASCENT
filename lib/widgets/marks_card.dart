import 'package:flutter/material.dart';

class Marks extends StatelessWidget {
  const Marks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
          Container(
              child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Center(
                        child: Wrap(
                          spacing: 15.0,
                          runSpacing: 20.0,
                          children: [

                            SizedBox(
                              width: 170.0,
                              height: 180.0,
                              child: Card(
                                color: Color.fromARGB(255, 245, 188, 124),
                                elevation: 3.0,
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
                                        Padding(padding: EdgeInsets.only(left: 10),
                                            child: Text("Completed", style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.0
                                            )
                                            ),
                                        ),
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

                            SizedBox(
                              width: 170.0,
                              height: 180.0,
                              child: Card(
                                color: Color(0x003d5cff),
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

                            SizedBox(
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

                            SizedBox(
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
                          ],
                        ),
                      ),
                    )
                  ]
              )
          );
  }
}
