import 'package:flutter/material.dart';
import 'package:portfolio/config/shared/app_shered_pref.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_theme_controller.g.dart';

@riverpod
class AppThemeController extends _$AppThemeController {
  @override
  Future<ThemeMode> build() {
    return AppSheredPref.getAppTheme();
  }

  void changeTheme(ThemeMode theme) async {
    await AppSheredPref.setAppTheme(theme == ThemeMode.dark ? 'dark' : 'light');
    update((state) => theme);
  }
}
