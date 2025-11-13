import 'package:flutter/material.dart';
import 'package:portfolio/config/theme/app_sizes.dart';
import 'package:portfolio/config/theme/extensions.dart';
import 'package:portfolio/presentation/widgets/app_bar_drawer.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      alignment: Alignment.center,
      color: Theme.of(context).appBarTheme.backgroundColor,
      height: context.padding.appBarHight,
      padding: EdgeInsets.symmetric(horizontal: context.padding.padding),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: Insests.maxWidth),
        child: Row(
          children: [
            AppLogo(),
            Spacer(),
            if (context.isDesktop) AppMenus(),
            Spacer(),
            ThemeToggle(),
            if (!context.isDesktop) AppBarDrawer(),
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

class AppMenus extends StatelessWidget {
  const AppMenus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Home'),
        Text('EDU/Certificates'),
        Text('Commercial Experience'),
        Text('Portfolio'),
      ],
    );
  }
}

class ThemeToggle extends StatelessWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Switch(value: false, onChanged: null);
  }
}
