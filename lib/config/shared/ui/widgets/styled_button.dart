import 'package:flutter/material.dart';
import 'package:portfolio/config/shared/extensions.dart';
import 'package:portfolio/config/shared/ui/widgets/seo_texts.dart';
import 'package:portfolio/config/theme/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  const PrimaryButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: AppColors.gray[100],
        ),
      ),
    );
  }
}

class OutlineButton extends StatelessWidget {
  final String title;
  const OutlineButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: SeoTexts(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: context.theme.colorScheme.onSurface,
        ),
      ),
    );
  }
}
