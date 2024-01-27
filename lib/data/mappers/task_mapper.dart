import '../../domain/models/task.dart';
import '../models/task_db.dart';

extension TaskMapper on TaskDB {
  Task fromHive() {
    return Task(
      id: id,
      title: title,
      description: description,
      isDone: isDone,
    );
  }
}

extension TaskDbMapper on Task {
  TaskDB toHive() {
    return TaskDB(
      id: id,
      title: title,
      description: description,
      isDone: isDone,
    );
  }
}
