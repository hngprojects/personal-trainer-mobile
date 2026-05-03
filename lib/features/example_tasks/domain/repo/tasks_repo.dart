import 'package:personal_trainer_mobile/features/features.dart';

abstract interface class TasksRepo {
  Future<List<TaskModel>> getTasks();
}
