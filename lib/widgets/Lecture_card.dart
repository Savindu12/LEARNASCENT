// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class lectureCard extends StatelessWidget {
  const lectureCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.blue[300],
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Column(
        children: [
          Text(
            "07 June 2023",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Wednesday",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
