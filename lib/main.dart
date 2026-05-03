import 'package:personal_trainer_mobile/app/app.dart';
import 'package:personal_trainer_mobile/core/core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await loadAppEnv();
  setupLocator();

  runApp(const ProviderScope(child: App()));
}
