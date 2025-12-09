import 'package:flutter/material.dart';
import 'package:portfolio/config/shared/extensions.dart';
import 'package:portfolio/config/shared/ui/widgets/seo_texts.dart';
import 'package:portfolio/config/theme/app_sizes.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';

class HeroTexts extends StatelessWidget {
  const HeroTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: context.isDesktopOrTablet
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      children: [
        SeoTexts(
          context.texts.me,
          textAlign: context.isDesktopOrTablet
              ? TextAlign.left
              : TextAlign.center,
          style: context.textStyle.titleLgBold.copyWith(
            color: context.theme.colorScheme.onSurface,
          ),
          textRenderStyle: TextRendererStyle.header1,
        ),
        SizedBox(height: Insets.sm),
        SeoTexts(
          context.texts.mobileDev,
          textAlign: context.isDesktopOrTablet
              ? TextAlign.left
              : TextAlign.center,
          style: context.textStyle.titleMdMedium.copyWith(
            color: context.theme.colorScheme.onSurface,
          ),
          textRenderStyle: TextRendererStyle.header2,
        ),
        SizedBox(height: Insets.lg),
        SeoTexts(
          context.texts.summaryBS,
          textAlign: context.isDesktopOrTablet
              ? TextAlign.left
              : TextAlign.center,
          style: context.textStyle.bodyMdMedium.copyWith(
            color: context.theme.colorScheme.onSurface,
          ),
          textRenderStyle: TextRendererStyle.header3,
        ),
      ],
    );
  }
}
