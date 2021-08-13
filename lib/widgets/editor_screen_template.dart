import 'package:flutter/material.dart';
import 'package:rsa_secured_messages_app/constants.dart';
import 'package:sizer/sizer.dart';

class EditorScreenTemplate extends StatelessWidget {
  const EditorScreenTemplate({
    required this.controller,
    this.maxLength,
  });

  final TextEditingController controller;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 7.0.w,
        left: 7.0.w,
        top: 3.0.h,
        bottom: 5.0.h,
      ),
      child: TextField(
        maxLength: maxLength,
        controller: controller,
        style: kSimpleTextStyle,
        cursorColor: Colors.white,
        textAlign: TextAlign.justify,
        autofocus: true,
        maxLines: null,
        autocorrect: false,
        expands: true,
      ),
    );
  }
}
