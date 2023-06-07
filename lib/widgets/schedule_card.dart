import 'package:flutter/material.dart';

class scheduleCard extends StatelessWidget {

  const scheduleCard({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column (
          children: [
            Row(
              children: [
                Container(
                  height: 80,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Image(image: AssetImage('lib/assets/MAD.png'),),
                ),
                const SizedBox(
                  width: 20,
                ),

                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mobile Application Development",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(
                      height: 8,
                    ),
                    Text("9.00 A.M - 12.00 P.M",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),),
                  ],
                ),
              ],
            ),
          ],
        )
    );
  }
  
}
