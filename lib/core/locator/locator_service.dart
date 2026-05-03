import 'package:personal_trainer_mobile/features/features.dart';
import 'package:personal_trainer_mobile/core/core.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator
    ..registerLazySingleton<AppConfig>(AppConfig.fromEnvironment)
    ..registerLazySingleton<ApiBaseService>(
      () => ApiBaseService(config: locator<AppConfig>()),
    )
    ..registerLazySingleton<TasksRepo>(
      () => TasksDatasource(
        config: locator<AppConfig>(),
        apiBaseService: locator<ApiBaseService>(),
      ),
    );
}
