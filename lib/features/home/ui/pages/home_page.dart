import 'package:flutter/material.dart';
import 'package:portfolio/config/shared/ui/widgets/appbar/my_app_bar.dart';
import 'package:portfolio/config/shared/ui/widgets/bg_blur.dart';
import 'package:portfolio/features/home/ui/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [const BgBlur(), HeroWidget(), const MyAppBar()]),
    );
  }
}
