import 'package:personal_trainer_mobile/app/theme/app_theme.dart';
import 'package:personal_trainer_mobile/core/core.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Starter',
      theme: AppTheme.light,
      routerConfig: AppRouter.router,
    );
  }
}
