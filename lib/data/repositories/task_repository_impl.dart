import 'package:to_do_weather/domain/models/task.dart';

import '../../domain/repositories/task_repository.dart';
import '../data_sources/database_data_source.dart';

class TaskRepositoryImpl implements TaskRepository {
  final DatabaseDataSource db;

  TaskRepositoryImpl(this.db);

  @override
  Future<Task> addTask(Task task) async => db.createTask(task);

  @override
  Future<void> deleteTask(int id) async => db.deleteTask(id);

  @override
  Future<List<Task>> getTasks() async => db.getTasks();

  @override
  Future<void> updateTask(Task task) => db.updateTask(task);
}
