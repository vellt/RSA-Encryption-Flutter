import 'package:flutter/material.dart';
import 'package:rsa_secured_messages_app/constants.dart';
import 'package:rsa_secured_messages_app/widgets/appbar_icon_button.dart';
import 'package:sizer/sizer.dart';

class ErrorPage extends StatelessWidget {
  ErrorPage({required this.title, required this.description});

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kErrorColor,
      appBar: AppBar(
        toolbarHeight: 10.h,
        leading: AppBarIconButton(
          padding: EdgeInsets.only(left: 7.w),
          icon: Icons.arrow_back_ios,
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          kErrorPageTitle,
          style: kSimpleTextStyle,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(right: 12.5.w, left: 12.5.w, top: 8.0.h),
        child: Column(
          children: [
            Text(
              title,
              textAlign: TextAlign.left,
              style: kBigTextStyle,
            ),
            SizedBox(
              height: 3.0.h,
            ),
            Text(
              description,
              style: kSimpleTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
