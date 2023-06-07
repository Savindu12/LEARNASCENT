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
    name: "EER Diagrams",
  ),
  Lesson(
    duration: 'Lesson 2',
    isCompleted: false,
    isPlaying: false,
    name: "PLSQL ",
  ),
  Lesson(
    duration: 'Lesson 3',
    isCompleted: false,
    isPlaying: false,
    name: "Procedures",
  ),
  Lesson(
    duration: 'Lesson 4',
    isCompleted: false,
    isPlaying: false,
    name: "Cursor",
  ),
  Lesson(
    duration: 'Lesson 5',
    isCompleted: false,
    isPlaying: false,
    name: "Functions",
  ),
  Lesson(
    duration: 'Lesson 6',
    isCompleted: false,
    isPlaying: false,
    name: "Triggers",
  )
];