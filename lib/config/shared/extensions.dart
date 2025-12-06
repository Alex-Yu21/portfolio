import 'package:flutter/material.dart';
import 'package:portfolio/config/theme/app_sizes.dart';
import 'package:portfolio/config/theme/app_text_styles.dart';

enum DeviceTipe { mobile, tablet, desktop }

class AppTexts {
  String get home => 'Home';
  String get edu => 'EDU/Certificates';
  String get exp => 'Commercial Experience';
  String get portfolio => 'Portfolio';
  String get cooperationRequest => '??';
}

extension StyledContext on BuildContext {
  MediaQueryData get mg => MediaQuery.of(this);
  double get width => mg.size.width;
  double get heigth => mg.size.height;
  ThemeData get theme => Theme.of(this);

  DeviceTipe get deviceTipe {
    if (width < 600) {
      return DeviceTipe.mobile;
    } else if (width < 900) {
      return DeviceTipe.tablet;
    } else {
      return DeviceTipe.desktop;
    }
  }

  bool get isMobile => deviceTipe == DeviceTipe.mobile;
  bool get isTablet => deviceTipe == DeviceTipe.tablet;
  bool get isDesktop => deviceTipe == DeviceTipe.desktop;
  bool get isDesktopOrTablet => isDesktop || isTablet;

  AppTextStyles get textStyle {
    switch (deviceTipe) {
      case DeviceTipe.mobile:
      case DeviceTipe.tablet:
        return SmallTextStyles();
      case DeviceTipe.desktop:
        return LargeTextStyles();
    }
  }

  AppPaddings get padding {
    switch (deviceTipe) {
      case DeviceTipe.mobile:
      case DeviceTipe.tablet:
      case DeviceTipe.desktop:
        return LargePaddings();
    }
  }

  AppTexts get texts => AppTexts();
}
