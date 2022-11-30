import 'package:flutter/material.dart';
import 'package:notify/core/constants.dart';

class NotifyIcon extends StatelessWidget {
  /// Notify app's custmizable icon
  const NotifyIcon({
    super.key,
    this.size = 30,
    this.color = AppThemeColors.backgroundColor,
    this.backgroundColor = AppThemeColors.secondaryColor,
  });

  final double size;
  final Color color;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      radius: size,
      child: Image.asset(
        appIcon,
        color: color,
        height: size + 10,
      ),
    );
  }
}
