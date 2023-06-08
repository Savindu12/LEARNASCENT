// ignore: file_names
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
    duration: 'Lesson 1',
    isCompleted: true,
    isPlaying: true,
    name: "Vectors",
  ),
  Lesson(
    duration: 'Lesson 2',
    isCompleted: false,
    isPlaying: false,
    name: "Diffrentiation",
  ),
  Lesson(
    duration: 'Lesson 3',
    isCompleted: false,
    isPlaying: false,
    name: "Partial Diffrentiation",
  ),
  Lesson(
    duration: 'Lesson 4',
    isCompleted: false,
    isPlaying: false,
    name: "Multiple Integration.",
  ),
  Lesson(
    duration: 'Lesson 5',
    isCompleted: false,
    isPlaying: false,
    name: "Multiple Integrals",
  ),
  Lesson(
    duration: 'Lesson 6',
    isCompleted: false,
    isPlaying: false,
    name: "Revision",
  )
];
