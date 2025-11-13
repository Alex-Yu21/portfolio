abstract class AppPaddings {
  double get padding;
}

class LargePaddings extends AppPaddings {
  @override
  double get padding => 80.0;
}

class SmallPaddings extends AppPaddings {
  @override
  double get padding => 16.0;
}
