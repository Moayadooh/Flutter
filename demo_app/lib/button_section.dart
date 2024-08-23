import 'package:demo_app/button_item.dart';
import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ButtonItem(
          iconData: Icons.call,
          label: 'CALL',
          color: color,
        ),
        ButtonItem(
          iconData: Icons.near_me,
          label: 'ROUTE',
          color: color,
        ),
        ButtonItem(
          iconData: Icons.share,
          label: 'SHARE',
          color: color,
        ),
      ],
    );
  }
}
