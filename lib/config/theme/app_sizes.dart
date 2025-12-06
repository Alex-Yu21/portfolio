class Insets {
  static double get xs => 4;
  static double get sm => 10;
  static double get mid => 12;
  static double get lg => 20;
  static double get xl => 24;
  static double get xxl => 60;
  static double get xxxl => 80;
  static const maxWidth = 1280.0;
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
