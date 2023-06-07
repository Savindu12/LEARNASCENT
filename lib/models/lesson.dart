class Lesson {
  String name;
  String duration;
  bool isPlaying;
  bool isCompleted;

  Lesson({
    required this.duration,
    required this.isCompleted,
    required this.isPlaying,
    required this.name,
  });
}

List<Lesson> lessonList = [
  Lesson(
    duration: 'Day 1',
    isCompleted: true,
    isPlaying: true,
    name: "Introduction To Mobile App Development",
  ),
  Lesson(
    duration: 'Day 2',
    isCompleted: false,
    isPlaying: false,
    name: "History of Mobile Application",
  ),
  Lesson(
    duration: 'Day 3',
    isCompleted: false,
    isPlaying: false,
    name: "Technologies and Tools",
  ),
  Lesson(
    duration: 'Day 4',
    isCompleted: false,
    isPlaying: false,
    name: "Introduction to Android Studio.",
  ),
  Lesson(
    duration: 'Day 5',
    isCompleted: false,
    isPlaying: false,
    name: "Diffrence between Java & Kotlin",
  ),
  Lesson(
    duration: 'Day 6',
    isCompleted: false,
    isPlaying: false,
    name: "Java OOP concepts with Mobile Apps",
  )
];
