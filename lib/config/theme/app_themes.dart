import 'package:flutter/material.dart';
import 'package:portfolio/config/theme/app_colors.dart';
import 'package:portfolio/config/theme/app_sizes.dart';

class AppThemes {
  final String fontFamily;

  AppThemes({required this.fontFamily});

  ThemeData get dark {
    return _getThemeData(
      colorScheme: ColorScheme.dark(
        primary: AppColors.primaryColor,
        surface: AppColors.gray[850]!,
        outline: AppColors.gray[800]!,
        outlineVariant: AppColors.gray[700]!,
        onSurface: AppColors.gray[300]!,
        onSurfaceVariant: AppColors.gray[400]!,
        tertiary: AppColors.gray[900]!,
      ),
      scaffoldBackgroundColor: AppColors.darkBackgroundColor,
      elevatedButtonTextStyle: _darkElevatedButtonTextStyle,
      outlineButtonTextStyle: _darkOutlineButtonTextStyle,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.gray[900]!.withOpacity(0.3),
      ),
    );
  }

  ThemeData get light {
    return _getThemeData(
      colorScheme: ColorScheme.light(
        primary: AppColors.primaryColor,
        surface: AppColors.gray[200]!,
        outline: AppColors.gray[300]!,
        outlineVariant: AppColors.gray[400]!,
        onSurface: AppColors.gray[700]!,
        onSurfaceVariant: AppColors.gray[600]!,
        tertiary: AppColors.gray[900]!,
      ),
      scaffoldBackgroundColor: AppColors.gray[100]!,
      elevatedButtonTextStyle: _LigthElevatedButtonTextStyle,
      outlineButtonTextStyle: _lightOutlineButtonTextStyle,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.gray[100]!.withOpacity(0.3),
      ),
    );
  }

  ThemeData _getThemeData({
    required ColorScheme colorScheme,
    required Color scaffoldBackgroundColor,
    required WidgetStateProperty<TextStyle> elevatedButtonTextStyle,
    required WidgetStateProperty<TextStyle> outlineButtonTextStyle,
    required AppBarTheme appBarTheme,
  }) {
    return ThemeData(
      colorScheme: colorScheme,
      useMaterial3: true,
      fontFamily: fontFamily,
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      appBarTheme: appBarTheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          fixedSize: const WidgetStatePropertyAll(Size.fromHeight(40)),
          backgroundColor: _primaryButtonStates,
          padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: Insets.xl, vertical: 10),
          ),
          textStyle: elevatedButtonTextStyle,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          fixedSize: const WidgetStatePropertyAll(Size.fromHeight(40)),
          side: _outlineButtonStates,
          padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: Insets.xl, vertical: 10),
          ),
          textStyle: outlineButtonTextStyle,
        ),
      ),
    );
  }

  final _primaryButtonStates = WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.hovered) ||
        states.contains(WidgetState.pressed)) {
      return const Color(0xFF561895).withOpacity(0.7);
    }
    return AppColors.primaryColor;
  });

  final _outlineButtonStates = WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.hovered) ||
        states.contains(WidgetState.pressed)) {
      return BorderSide(color: const Color(0xFF561895).withOpacity(0.7));
    }
    return const BorderSide(color: Color(0xFF561895));
  });

  WidgetStatePropertyAll<TextStyle> get _darkElevatedButtonTextStyle =>
      WidgetStatePropertyAll(
        TextStyle(
          color: AppColors.gray[100],
          fontFamily: fontFamily,
          fontWeight: FontWeight.w500,
        ),
      );

  WidgetStatePropertyAll<TextStyle> get _LigthElevatedButtonTextStyle =>
      WidgetStatePropertyAll(
        TextStyle(
          color: AppColors.gray[100],
          fontFamily: fontFamily,
          fontWeight: FontWeight.w500,
        ),
      );

  WidgetStatePropertyAll<TextStyle> get _darkOutlineButtonTextStyle =>
      WidgetStatePropertyAll(
        TextStyle(
          color: AppColors.gray[100],
          fontFamily: fontFamily,
          fontWeight: FontWeight.w500,
        ),
      );

  WidgetStatePropertyAll<TextStyle> get _lightOutlineButtonTextStyle =>
      WidgetStatePropertyAll(
        TextStyle(color: AppColors.gray[800], fontFamily: fontFamily),
      );
}
