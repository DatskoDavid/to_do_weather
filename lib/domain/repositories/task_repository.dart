import 'package:to_do_weather/data/data_sources/database_data_source.dart';

import '../models/task.dart';

abstract class TaskRepository {
  final DatabaseDataSource db;

  TaskRepository(this.db);

  Future<List<Task>> getTasks();

  Future<Task> addTask(Task task);

  Future<void> updateTask(Task task);

  Future<void> deleteTask(int id);
}
