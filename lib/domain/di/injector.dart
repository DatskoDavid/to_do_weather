import 'package:get_it/get_it.dart';

import '../../data/data_sources/database_data_source.dart';
import '../../data/repositories/task_repository_impl.dart';
import '../../presentation/bloc/tasks_bloc.dart';
import '../repositories/task_repository.dart';

// used get_it package for dependecy injection
GetIt get injector => GetIt.instance;

void initInjector() {
  _initDataSources();
  _initRepositories();
  _initBloc();
}

void _initDataSources() {
  injector.registerSingleton<DatabaseDataSource>(DatabaseDataSource());
}

void _initRepositories() {
  injector
      .registerSingleton<TaskRepository>(TaskRepositoryImpl(injector.get()));
}

void _initBloc() {
  injector.registerFactory<TasksBloc>(() => TasksBloc(injector.get()));
}
