import 'package:hive/hive.dart';
import 'package:to_do_weather/data/mappers/task_mapper.dart';

import '../../domain/models/task.dart';
import '../models/task_db.dart';

class DatabaseDataSource {
  static const _tasksTag = 'tasks';
  static late final Box<TaskDB> _tasksBox;

  static Future<void> initializeHive({isTesting = false}) async {
    Hive.registerAdapter(TaskDBAdapter());
    _tasksBox = await Hive.openBox<TaskDB>(_tasksTag);
  }

  Future<void> dispose() async {
    await _tasksBox.close();
  }

  Future<Task> createTask(Task task) async {
    final toCreate = TaskDB(
      title: task.title,
      description: task.description,
      isDone: task.isDone,
    );
    final id = await _tasksBox.add(toCreate);
    final created = toCreate.copyWith(id: id);
    await _tasksBox.put(id, created);
    return created.fromHive();
  }

  Future<List<Task>> getTasks() async {
    Iterable<TaskDB> result;
    result = _tasksBox.values;
    return List<Task>.generate(
      result.length,
      (index) => result.elementAt(index).fromHive(),
    );
  }

  Future<void> deleteTask(int taskId) async {
    return _tasksBox.delete(taskId);
  }

  Future<void> updateTask(Task task) async => _tasksBox.put(
        task.id!,
        task.toHive(),
      );
}
