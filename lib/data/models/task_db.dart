import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'task_db.g.dart';

@immutable
@HiveType(typeId: 0)
class TaskDB {
  @HiveField(0)
  final int? id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String description;
  @HiveField(3)
  final bool isDone;

  const TaskDB({
    this.id,
    required this.title,
    required this.description,
    required this.isDone,
  });

  TaskDB copyWith({
    int? id,
    String? title,
    String? description,
    bool? isDone,
  }) {
    return TaskDB(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      isDone: isDone ?? this.isDone,
    );
  }
}
