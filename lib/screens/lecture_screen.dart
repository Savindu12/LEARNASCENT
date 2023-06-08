import 'package:flutter/services.dart';
import 'package:learnascent_lms/screens/base_screen.dart';
import 'package:learnascent_lms/screens/profile.dart';
import 'package:learnascent_lms/widgets/lecture_material.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class lectureScreen extends StatefulWidget {
  const lectureScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _lectureScreenState createState() => _lectureScreenState();
}

// ignore: camel_case_types
class _lectureScreenState extends State<lectureScreen> {
  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(),
              Body(),
            ],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const lectureMaterial();
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
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const BaseScreen()),
                  );
                },
                icon: const Icon(Icons.arrow_back),
              ),
              IconButton(
                color: Colors.white,
                iconSize: 30,
                icon: const Icon(Icons.person),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfileScreen()),
                  );
                },
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Lecture Materials',
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
