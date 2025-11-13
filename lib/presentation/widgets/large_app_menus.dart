import 'package:flutter/material.dart';

class LargeAppMenus extends StatelessWidget {
  const LargeAppMenus({super.key});

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
