import 'package:flutter/material.dart';
import 'package:portfolio/config/theme/app_text_styles.dart';

enum DeviceTipe { mobile, tablet, desktop }

extension StyledContext on BuildContext {
  MediaQueryData get mg => MediaQuery.of(this);
  double get wigth => mg.size.width;
  double get heigth => mg.size.height;

  DeviceTipe get deviceTipe {
    if (wigth < 600) {
      return DeviceTipe.mobile;
    } else if (wigth < 900) {
      return DeviceTipe.tablet;
    } else {
      return DeviceTipe.mobile;
    }
  }

  bool get isMobile => deviceTipe == DeviceTipe.mobile;
  bool get isTablet => deviceTipe == DeviceTipe.tablet;
  bool get isDesktop => deviceTipe == DeviceTipe.desktop;

  AppTextStyles get textStyle {
    switch (deviceTipe) {
      case DeviceTipe.mobile:
      case DeviceTipe.tablet:
        return SmallTextStyles();
      case DeviceTipe.desktop:
        return LargeTextStyles();
    }
  }
}
