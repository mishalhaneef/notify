import 'package:flutter/cupertino.dart';

class AppThemeColors {
  static const backgroundColor = Color(0xFF111422);
  static const backgroundColorLite = Color(0xff292F48);
  static const secondaryColor = Color(0xffC3D0FF);
  static const logoBackgroundColor = Color(0xff292F48);
  static const borderColor = Color(0xff545C80);
  static const premiumGoldenColor = Color(0xffFFC671);
  static const dimTextColor = Color(0xff6977AB);
  static const hintColor = Color(0xff838DB1);
}

class UserAvatar {
  List<String> userAvatars = [];
}

class AppIcon {
  static const IconData notification = CupertinoIcons.app_badge_fill;
  static const String home = '';
  static const String manage = '';
  static const String edit = '';
  static const String premium = '';
  static const IconData darkTheme = CupertinoIcons.moon_fill;
  static const IconData lightTheme = CupertinoIcons.sun_min_fill;
}

// app icon
const appIcon = 'assets/appicon.png';
const userIcon = 'assets/person.png';

final boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    border: Border.all(color: AppThemeColors.borderColor));
