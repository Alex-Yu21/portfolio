import 'package:flutter/material.dart';

class AppBarDrawer extends StatefulWidget {
  const AppBarDrawer({super.key});

  @override
  State<AppBarDrawer> createState() => _AppBarDrawerState();
}

class _AppBarDrawerState extends State<AppBarDrawer>
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
          } else {
            _controller.reverse();
          }
          _isOpen = !_isOpen;
        });
      },
      icon: AnimatedIcon(icon: AnimatedIcons.menu_close, progress: _animation),
    );
  }
}
