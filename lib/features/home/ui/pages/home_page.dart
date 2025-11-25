import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/appbar/my_app_bar.dart';
import 'package:portfolio/presentation/widgets/bg_blur.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BgBlur(),
          //
          const MyAppBar(),
        ],
      ),
    );
  }
}
