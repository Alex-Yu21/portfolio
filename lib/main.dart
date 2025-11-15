import 'package:flutter/material.dart';
import 'package:portfolio/config/theme/app_themes.dart';
import 'package:portfolio/presentation/pages/home_page.dart';

String _fontFamily = 'Poppins';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: AppThemes(fontFamily: _fontFamily).dark,
      theme: AppThemes(fontFamily: _fontFamily).light,
      themeMode: ThemeMode.dark,
      home: HomePage(),
    );
  }
}
