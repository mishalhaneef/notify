import 'package:flutter/material.dart';
import 'package:notify/core/constants.dart';


class NotifyIcon extends StatelessWidget {
  /// Notify app's custmizable icon
  const NotifyIcon({
    super.key,
    this.size = 70,
    this.color = Colors.white,
    this.backgroundColor = AppThemeColors.logoBackgroundColor,
    this.iconSize = 80,
  });

  final double size;
  final Color color;
  final Color backgroundColor;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      radius: size,
      child: Image.asset(
        appIcon,
        color: color,
        height: iconSize,
      ),
    );
  }
}
