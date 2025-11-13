import 'package:flutter/material.dart';
import 'package:portfolio/config/routes/app_routes.dart';
import 'package:portfolio/config/theme/app_sizes.dart';
import 'package:portfolio/config/theme/extensions.dart';
import 'package:portfolio/domain/entities/app_menu_item.dart';
import 'package:portfolio/presentation/widgets/app_bar_drawer.dart';
import 'package:portfolio/presentation/widgets/large_app_menus.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final menuItems = AppMenusList.getItems(context);

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      alignment: Alignment.center,
      color: context.theme.appBarTheme.backgroundColor,
      height: context.padding.appBarHight,
      padding: EdgeInsets.symmetric(horizontal: context.padding.padding),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: Insests.maxWidth),
        child: Row(
          children: [
            AppLogo(),
            Spacer(),
            if (context.isDesktop) LargeAppMenus(list: menuItems),
            Spacer(),
            ThemeToggle(),
            if (!context.isDesktop) AppBarDrawer(list: menuItems),
          ],
        ),
      ),
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

class ThemeToggle extends StatelessWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Switch(value: false, onChanged: null);
  }
}

class AppMenusList {
  static List<AppMenuItem> getItems(BuildContext context) {
    return [
      AppMenuItem(title: 'Home', path: Routes.home),
      AppMenuItem(title: 'EDU/Certificates', path: Routes.edu),
      AppMenuItem(title: 'Commercial Experience', path: Routes.experience),
      AppMenuItem(title: 'Portfolio', path: Routes.portfolio),
    ];
  }
}
