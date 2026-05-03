import 'package:personal_trainer_mobile/core/core.dart';
import 'package:personal_trainer_mobile/features/features.dart';

final tasksRepoProvider = Provider<TasksRepo>((ref) {
  return locator<TasksRepo>();
});

final tasksProvider = FutureProvider<List<TaskModel>>((ref) {
  return ref.watch(tasksRepoProvider).getTasks();
});
