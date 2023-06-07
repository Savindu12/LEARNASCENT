class LecMaterial {
  const LecMaterial({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.lectures,
  });

  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> lectures;
}
