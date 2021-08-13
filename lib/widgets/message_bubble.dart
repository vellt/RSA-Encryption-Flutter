import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:rsa_secured_messages_app/constants.dart';

class MessageBubble extends StatelessWidget {
  MessageBubble({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.only(
            left: 7.0.w, right: 7.0.w, top: 4.0.h, bottom: 4.0.h),
        child: Container(
          decoration: BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.all(Radius.circular(20.sp))),
          child: Padding(
            padding: EdgeInsets.only(
                left: 8.0.w, right: 8.0.w, top: 4.0.h, bottom: 4.0.h),
            child: Text(
              text,
              style: kSimpleTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
