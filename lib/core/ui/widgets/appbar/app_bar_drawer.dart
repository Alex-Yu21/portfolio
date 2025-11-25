import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/config/shared/extensions.dart';
import 'package:portfolio/config/theme/app_sizes.dart';
import 'package:portfolio/config/theme/app_text_styles.dart';
import 'package:portfolio/core/ui/providers/drawer_menu_controller.dart';
import 'package:portfolio/domain/entities/app_menu_item.dart';

class AppBarDrawerIcon extends ConsumerStatefulWidget {
  const AppBarDrawerIcon({super.key});

  @override
  ConsumerState<AppBarDrawerIcon> createState() => _AppBarDrawerState();
}

class _AppBarDrawerState extends ConsumerState<AppBarDrawerIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  bool _isOpen = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          if (_isOpen) {
            _controller.forward();
            ref.read(drawerMenuControllerProvider.notifier).open();
          } else {
            _controller.reverse();
            ref.read(drawerMenuControllerProvider.notifier).close();
          }
          _isOpen = !_isOpen;
        });
      },
      icon: AnimatedIcon(icon: AnimatedIcons.menu_close, progress: _animation),
    );
  }
}

class DrawerMenu extends ConsumerStatefulWidget {
  const DrawerMenu({super.key, required this.list});
  final List<AppMenuItem> list;

  @override
  ConsumerState<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends ConsumerState<DrawerMenu>
    with SingleTickerProviderStateMixin {
  late final _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 200),
  );

  late final _animation = Tween<Offset>(
    begin: Offset(0, -1),
    end: Offset.zero,
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(drawerMenuControllerProvider, (previous, next) {
      if (next.value == true) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
    return ClipRect(
      child: SlideTransition(
        position: _animation,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: context.theme.colorScheme.surface,
            boxShadow: [
              BoxShadow(
                color: context.theme.colorScheme.surface.withOpacity(0.4),
                blurRadius: 6,
                spreadRadius: 3,
              ),
            ],
          ),
          child: SmallMenu(list: widget.list),
        ),
      ),
    );
  }
}

class SmallMenu extends StatelessWidget {
  const SmallMenu({super.key, required this.list});

  final List<AppMenuItem> list;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: list
          .map(
            (e) =>
                // TODO доделать бул и онтап
                DrawerAppMenuItem(
                  label: e.title,
                  onTap: () {},
                  isActive: false,
                ),
          )
          .toList(),
    );
  }
}

class DrawerAppMenuItem extends StatelessWidget {
  const DrawerAppMenuItem({
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
          horizontal: Insets.mid,
          vertical: Insets.xs,
        ),
        child: Text(label, style: SmallTextStyles().bodyLgMedium),
      ),
    );
  }
}
