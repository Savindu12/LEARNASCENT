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
    name: "Introduction to IAS",
  ),
  Lesson(
    duration: 'Lesson 2',
    isCompleted: false,
    isPlaying: false,
    name: "Viruses, Trojan, Adware",
  ),
  Lesson(
    duration: 'Lesson 3',
    isCompleted: false,
    isPlaying: false,
    name: "Digital Forensics",
  ),
  Lesson(
    duration: 'Lesson 4',
    isCompleted: false,
    isPlaying: false,
    name: "Access Control",
  ),
  Lesson(
    duration: 'Lesson 5',
    isCompleted: false,
    isPlaying: false,
    name: "Security Models & Policies",
  ),
];