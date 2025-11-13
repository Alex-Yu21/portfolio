import 'package:flutter/material.dart';
import 'package:portfolio/config/theme/app_sizes.dart';
import 'package:portfolio/config/theme/app_text_styles.dart';
import 'package:portfolio/domain/entities/app_menu_item.dart';

class LargeAppMenus extends StatelessWidget {
  const LargeAppMenus({super.key, required this.list});

  final List<AppMenuItem> list;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: list
          .map(
            (e) =>
                // TODO доделать бул и онтап
                LargeAppMenuItem(label: e.title, onTap: () {}, isActive: false),
          )
          .toList(),
    );
  }
}

class LargeAppMenuItem extends StatelessWidget {
  const LargeAppMenuItem({
    super.key,
    required this.label,
    required this.isActive,
    required this.onTap,
  });

  final String label;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Insests.mid,
          vertical: Insests.xs,
        ),
        child: Text(label, style: SmallTextStyles().bodyLgMedium),
      ),
    );
  }
}
