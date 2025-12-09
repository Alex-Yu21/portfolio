import 'package:flutter/material.dart';

class HeroImage extends StatelessWidget {
  const HeroImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.8,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(0)),

        child: Image.asset('assets/images/main.jpg', fit: BoxFit.cover),
      ),
    );
  }
}
