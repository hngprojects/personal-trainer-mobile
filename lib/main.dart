
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:personal_trainer_mobile/app/app.dart';
import 'package:personal_trainer_mobile/core/core.dart';

Future<void> main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await loadAppEnv();
  setupLocator();
  
  await Future.delayed(const Duration(seconds: 3));
  FlutterNativeSplash.remove();

  runApp(const ProviderScope(child: App()));
}
