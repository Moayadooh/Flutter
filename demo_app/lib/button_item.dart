import 'package:flutter/material.dart';

class ButtonItem extends StatelessWidget {
  const ButtonItem({
    required this.iconData,
    required this.label,
    required this.color,
    super.key,
  });
  final IconData iconData;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          color: color,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            label,
            style: TextStyle(
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
