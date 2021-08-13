import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NavigationButton extends StatelessWidget {
  NavigationButton(
      {required this.text,
      required this.background,
      required this.foreground,
      required this.onPressed});

  final Color background;
  final Color foreground;
  final Function onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        height: 10.0.h,
        width: double.infinity,
        decoration: BoxDecoration(
            color: background,
            borderRadius: BorderRadius.all(Radius.circular(7.w))),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20.sp,
              color: foreground,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
