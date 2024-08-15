import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/data/dataSource/data_source.dart';
import 'package:todo_app/data/repositories/repositories.dart';

final taskRepositoryProvider = Provider<TaskRepository>((ref) {
  final datasource = ref.read(taskDatasourceProvider);
  return TaskRepositoryImpl(datasource);
});