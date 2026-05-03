import 'package:flutter/material.dart';
import 'package:personal_trainer_mobile/app/theme/app_palette.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData get light {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: AppPalette.primary),
      useMaterial3: true,
      scaffoldBackgroundColor: AppPalette.background,
    );
  }
}
