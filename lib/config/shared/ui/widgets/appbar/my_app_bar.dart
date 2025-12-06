import 'package:flutter/material.dart';
import 'package:portfolio/config/routes/app_routes.dart';
import 'package:portfolio/config/shared/extensions.dart';
import 'package:portfolio/config/shared/ui/widgets/appbar/app_bar_drawer.dart';
import 'package:portfolio/config/shared/ui/widgets/appbar/large_app_menus.dart';
import 'package:portfolio/config/shared/ui/widgets/appbar/theme_toggle.dart';
import 'package:portfolio/config/theme/app_sizes.dart';
import 'package:portfolio/domain/entities/app_menu_item.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final menuItems = AppMenusList.getItems(context);

    return Column(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          alignment: Alignment.center,
          color: context.theme.appBarTheme.backgroundColor,
          height: context.padding.appBarHight,
          padding: EdgeInsets.symmetric(horizontal: context.padding.padding),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: Insets.maxWidth),
            child: Row(
              children: [
                AppLogo(),
                Spacer(),
                if (context.isDesktop) LargeAppMenus(list: menuItems),
                Spacer(),
                ThemeToggle(),
                if (!context.isDesktop) AppBarDrawerIcon(),
              ],
            ),
          ),
        ),
        if (!context.isDesktop) DrawerMenu(list: menuItems),
      ],
    );
  }
}

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('portfolio', style: context.textStyle.titleLgBold);
  }
}

class AppMenusList {
  static List<AppMenuItem> getItems(BuildContext context) {
    return [
      AppMenuItem(title: context.texts.home, path: Routes.home),
      AppMenuItem(title: context.texts.edu, path: Routes.edu),
      AppMenuItem(title: context.texts.exp, path: Routes.experience),
      AppMenuItem(title: context.texts.portfolio, path: Routes.portfolio),
    ];
  }
}
