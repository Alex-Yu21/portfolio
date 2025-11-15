class Insets {
  static double get xs => 4;
  static double get mid => 12;
  static double get xl => 24;
  static const maxWidth = 1200.0;
}

abstract class AppPaddings {
  double get padding;
  double get appBarHight;
}

class LargePaddings extends AppPaddings {
  @override
  double get padding => 80.0;

  @override
  double get appBarHight => 64;
}

class SmallPaddings extends AppPaddings {
  @override
  double get padding => 16.0;

  @override
  double get appBarHight => 56;
}
