import 'package:personal_trainer_mobile/core/core.dart';
import 'package:personal_trainer_mobile/features/onboarding/presentation/views/test_onboard.dart';

class AppRouter {
  const AppRouter._();

  static const onboarding = '/';
  static const authScreen = '/authScreen';

  static final router = GoRouter(
    initialLocation: onboarding,
    routes: [
      // GoRoute(path: home, builder: (_, _) => const TasksView()),

      // for testing onboarding, replace with actual onboarding view when ready
      GoRoute(path: onboarding, builder: (_, state) => const TestOnboard()),
      // GoRoute(path: authScreen, builder: (_, state) => const YourPlaceholder()),

    ],
  );
}
