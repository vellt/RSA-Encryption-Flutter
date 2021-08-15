import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

const kMainColor = Color(0xFF1D252C);
const kSecondaryColor = Color(0xFF3E444A);
const kErrorColor = Color(0xFFC55C5C);
const kEncryptButtonForeground = Color(0xFFEBEBEB);
const kEncryptButtonBackground = Color(0xFF858585);
const kDecryptButtonForeground = Color(0xFF1D252C);
const kDecryptButtonBackground = Color(0xFFCCCCCC);

const kPublicKeyTitle = 'Your Public Key';
const kPublicKeyInputPageTitle = 'Receiver Public Key';
const kMessageInputPageTitle = 'Message';
const kErrorPageTitle = 'Error';
const kPublicKeyAlertTitle = 'Public Key is Copied!';
const kEncryptButtonTitle = 'Encrypt';
const kDecryptButtonTitle = 'Decrypt';
const kEncryptErrorTitle = 'Invalid Public Key';
const kEncryptErrorDescription =
    "Please enter the receiver's current Public Key.";
const kDecryptErrorTitle = "It's Not Your Message";
const kDecryptErrorDescription =
    'Please give your current Public Key for the sender.';
const kEncryptResultPageTitle = 'Encrypt Result';
const kEncryptResultAlertTitle = 'Encrypt result is Copied!';
const kDecryptResultPageTitle = 'Decrypt Result';
const kDecryptResultAlertTitle = 'Decrypt result is Copied!';
const kSadSmiley = ':(';
const kMaxTextFieldLength = 245;

final kBigTextStyle = TextStyle(
  fontSize: 28.sp,
  fontWeight: FontWeight.bold,
);

final kPublicKeyDataTextStyle = TextStyle(
  fontSize: 18.sp,
  color: kEncryptButtonBackground,
);

final kSimpleTextStyle = TextStyle(
  fontSize: 18.sp,
);

final kSnackBarTextStyle = TextStyle(
  fontSize: 11.0.sp,
  color: kEncryptButtonForeground,
);
