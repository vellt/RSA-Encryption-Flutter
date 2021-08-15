import 'package:flutter/material.dart';
import 'package:rsa_secured_messages_app/utilities/constants.dart';
import 'package:rsa_secured_messages_app/widgets/appbar_icon_button.dart';
import 'package:rsa_secured_messages_app/widgets/copy_icon_button.dart';
import 'package:rsa_secured_messages_app/widgets/message_bubble.dart';
import 'package:sizer/sizer.dart';

late String _message;
late String _title;
late String _alert;

class ResultPage extends StatefulWidget {
  ResultPage({required message, required title, required alert}) {
    _message = message;
    _title = title;
    _alert = alert;
  }

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10.h,
        leading: AppBarIconButton(
          padding: EdgeInsets.only(left: 7.w),
          icon: Icons.arrow_back_ios,
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          _title,
          style: kSimpleTextStyle,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 7.w),
            child: CopyIconButton(
              clipboardDataText: _message,
              alertText: _alert,
              iconSize: 20.0.sp,
            ),
          ),
        ],
      ),
      body: MessageBubble(
        text: _message,
      ),
    );
  }
}
