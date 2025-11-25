import 'package:flutter/material.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';

class SeoTexts extends StatelessWidget {
  // ignore: use_super_parameters
  const SeoTexts(
    this.text, {
    Key? key,
    this.style,
    this.textAlign,
    this.textRenderStyle,
  }) : super(key: key);

  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextRendererStyle? textRenderStyle;

  @override
  Widget build(BuildContext context) {
    return Text(text, textAlign: textAlign);
  }
}
