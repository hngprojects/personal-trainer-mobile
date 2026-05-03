import 'package:personal_trainer_mobile/features/features.dart';
import 'package:personal_trainer_mobile/core/core.dart';

class AppRouter {
  const AppRouter._();

  static const home = '/';

  static final router = GoRouter(
    initialLocation: home,
    routes: [
      GoRoute(path: home, builder: (_, _) => const TasksView()),
    ],
  );
}
