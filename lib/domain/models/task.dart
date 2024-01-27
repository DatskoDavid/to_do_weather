class Task {
  final int? id;
  final String title;
  final String description;
  final bool isDone;

  Task({
    this.id,
    required this.title,
    required this.description,
    required this.isDone,
  });

  Task copyWith({
    int? id,
    String? title,
    bool? isDone,
  }) {
    return Task(
      id: id ?? this.id,
      title: title ?? this.title,
      isDone: isDone ?? this.isDone,
    );
  }
}
