import 'package:flutter/material.dart';
import 'package:portfolio/presentation/pages/home_page.dart';
import 'package:portfolio/theme/app_themes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: AppThemes.dark,
      home: HomePage(),
    );
  }
}
