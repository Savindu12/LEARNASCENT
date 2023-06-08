import 'package:learnascent_lms/screens/featuerd_screen.dart';
import 'package:learnascent_lms/screens/assignmentmarks_screen.dart';
import 'package:learnascent_lms/screens/lecture_screen.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:learnascent_lms/screens/profile.dart';
import 'home_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _currentIndex = 0;
  Color backgroundColor = const Color(0xFF0C195C);
  final PageController _pageController = PageController();

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const lectureScreen(),
    const ScheduleScreen(),
    const assignmentMarks(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: _widgetOptions,
      ),
      bottomNavigationBar: BaseFooter(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            _pageController.animateToPage(
              index,
              duration: const Duration(microseconds: 500),
              curve: Curves.ease,
            );
          });
        },
      ),
    );
  }
}

class BaseFooter extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  BaseFooter({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  final List<SalomonBottomBarItem> _navBarOptions = [
    SalomonBottomBarItem(
      icon: const Icon(Icons.home),
      title: const Text("Home"),
      unselectedColor: const Color(0xfff6f6f6),
      selectedColor: Colors.orangeAccent,
    ),
    SalomonBottomBarItem(
      icon: const Icon(Icons.book),
      title: const Text("Lectures"),
      unselectedColor: const Color(0xfff6f6f6),
      selectedColor: Colors.orangeAccent,
    ),
    SalomonBottomBarItem(
      icon: const Icon(Icons.schedule),
      title: const Text("Schedule"),
      unselectedColor: const Color(0xfff6f6f6),
      selectedColor: Colors.orangeAccent,
    ),
    SalomonBottomBarItem(
      icon: const Icon(Icons.assignment),
      title: const Text("Marks"),
      unselectedColor: const Color(0xfff6f6f6),
      selectedColor: Colors.orangeAccent,
    ),
    SalomonBottomBarItem(
      icon: const Icon(Icons.person),
      title: const Text("Profile"),
      unselectedColor: const Color(0xfff6f6f6),
      selectedColor: Colors.orangeAccent,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: _navBarOptions,
    );
  }
}
