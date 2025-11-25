import 'package:flutter/material.dart';
import 'package:portfolio/config/shared/extensions.dart';
import 'package:portfolio/config/theme/app_sizes.dart';

class BgBlur extends StatelessWidget {
  const BgBlur({super.key});

  @override
  Widget build(BuildContext context) {
    final width = context.width / 2;
    return Positioned(
      left: -(width / 2),
      top: -(width / 2) + Insets.xxxl,
      child: Container(
        width: width,
        height: width,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              blurRadius: 200,
              spreadRadius: 100,
              color: context.theme.colorScheme.primary.withOpacity(0.4),
            ),
          ],
        ),
      ),
    );
  }
}
