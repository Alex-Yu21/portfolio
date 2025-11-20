import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/config/theme/app_themes.dart';
import 'package:portfolio/presentation/pages/home_page.dart';
import 'package:portfolio/presentation/providers/app_theme_controller.dart';

String _fontFamily = 'Poppins';

void main() {
  runApp(ProviderScope(child: const MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final theme = ref.watch(appThemeControllerProvider);
    return MaterialApp(
      darkTheme: AppThemes(fontFamily: _fontFamily).dark,
      theme: AppThemes(fontFamily: _fontFamily).light,
      themeMode: theme.value,
      home: HomePage(),
    );
  }
}
