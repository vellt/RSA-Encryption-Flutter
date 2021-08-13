import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rsa_secured_messages_app/pages/home_page.dart';
import 'package:sizer/sizer.dart';
import 'constants.dart';

void main() => runApp(RSAEncrypter());

class RSAEncrypter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: kMainColor,
    ));
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          primaryColor: kMainColor,
          scaffoldBackgroundColor: kMainColor,
          platform: TargetPlatform.iOS,
          inputDecorationTheme: InputDecorationTheme(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  style: BorderStyle.solid, color: Colors.transparent),
            ),
          ),
        ),
        home: HomePage(),
      );
    });
  }
}
