import 'package:flutter/material.dart';

class AppBarIconButton extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final IconData icon;
  final Function onPressed;

  AppBarIconButton({
    required this.icon,
    required this.onPressed,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: IconButton(
        icon: Icon(icon),
        onPressed: () {
          onPressed();
        },
      ),
    );
  }
}
