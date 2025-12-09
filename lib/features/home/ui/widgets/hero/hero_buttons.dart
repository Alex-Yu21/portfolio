import 'package:flutter/material.dart';
import 'package:portfolio/config/shared/extensions.dart';
import 'package:portfolio/config/shared/ui/widgets/styled_button.dart';
import 'package:portfolio/config/theme/app_sizes.dart';

class LargeHeroButtons extends StatelessWidget {
  const LargeHeroButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PrimaryButton(title: context.texts.cooperationRequest),
        SizedBox(width: Insets.lg),
        OutlineButton(title: context.texts.exp),
      ],
    );
  }
}

class SmallHeroButtons extends StatelessWidget {
  const SmallHeroButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: PrimaryButton(title: context.texts.cooperationRequest),
        ),
        SizedBox(height: Insets.lg),
        SizedBox(
          width: double.infinity,
          child: OutlineButton(title: context.texts.exp),
        ),
      ],
    );
  }
}
