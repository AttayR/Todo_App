import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/data/repositories/repositories.dart';
import 'package:todo_app/providers/providers.dart';


final tasksProvider = StateNotifierProvider<TaskNotifier, TaskState>((ref) {
  final repository = ref.watch(taskRepositoryProvider);
  return TaskNotifier(repository);
});