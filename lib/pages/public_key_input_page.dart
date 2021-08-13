import 'package:flutter/material.dart';
import 'package:rsa_secured_messages_app/constants.dart';
import 'package:rsa_secured_messages_app/pages/message_input_page.dart';
import 'package:rsa_secured_messages_app/widgets/appbar_icon_button.dart';
import 'package:rsa_secured_messages_app/widgets/editor_screen_template.dart';
import 'package:sizer/sizer.dart';
import 'package:rsa_secured_messages_app/untils/rsa_brain.dart';

late RSABrain _myRsaBrain;

class PublicKeyInputPage extends StatefulWidget {
  PublicKeyInputPage({required RSABrain rsaBrain}) {
    _myRsaBrain = rsaBrain;
  }

  @override
  _PublicKeyInputPageState createState() => _PublicKeyInputPageState();
}

class _PublicKeyInputPageState extends State<PublicKeyInputPage> {
  TextEditingController publicKeyController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: AppBar(
        toolbarHeight: 10.h,
        leading: AppBarIconButton(
          padding: EdgeInsets.only(left: 7.w),
          icon: Icons.arrow_back_ios,
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          kPublicKeyInputPageTitle,
          style: kSimpleTextStyle,
        ),
        actions: [
          AppBarIconButton(
            padding: EdgeInsets.only(right: 7.w),
            icon: Icons.arrow_forward_ios,
            onPressed: () {
              _myRsaBrain.setReceiverPublicKey(publicKeyController.text.trim());
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessageInputPage(
                    rsaBrain: _myRsaBrain,
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: EditorScreenTemplate(
        controller: publicKeyController,
      ),
    );
  }
}
