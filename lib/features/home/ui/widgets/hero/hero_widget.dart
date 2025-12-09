import 'package:flutter/material.dart';
import 'package:portfolio/config/shared/extensions.dart';
import 'package:portfolio/config/theme/app_sizes.dart';
import 'package:portfolio/features/home/ui/widgets/hero/hero_buttons.dart';
import 'package:portfolio/features/home/ui/widgets/hero/hero_image.dart';
import 'package:portfolio/features/home/ui/widgets/hero/hero_texts.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(''),
        context.isDesktopOrTablet ? _LargeHero() : _SmallHero(),
      ],
    );
  }
}

class _LargeHero extends StatelessWidget {
  const _LargeHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: const HeroImage()),
        SizedBox(width: Insets.xxxl),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              const HeroTexts(),
              SizedBox(height: Insets.xxl),
              const LargeHeroButtons(),
            ],
          ),
        ),
      ],
    );
  }
}

class _SmallHero extends StatelessWidget {
  const _SmallHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 140),
          child: const HeroImage(),
        ),
        SizedBox(height: Insets.xl),
        const HeroTexts(),
        SizedBox(height: Insets.xl),
        const SmallHeroButtons(),
      ],
    );
  }
}
