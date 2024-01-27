import 'package:to_do_weather/domain/models/task.dart';

import '../../domain/repositories/task_repository.dart';
import '../data_sources/database_data_source.dart';

class TaskRepositoryImpl implements TaskRepository {
  final DatabaseDataSource db;

  TaskRepositoryImpl(this.db);

  @override
  Future<Task> addTask(Task task) async => db.createTask(task);

  @override
  Future<void> deleteTask(int id) {}

  @override
  Future<List<Task>> getTasks() {
    // TODO: implement getTasks
    throw UnimplementedError();
  }

  @override
  Future<void> updateTask(Task task) {
    // TODO: implement updateTask
    throw UnimplementedError();
  }
}
