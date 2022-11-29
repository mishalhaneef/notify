import 'package:flutter/material.dart';
import 'package:notify/core/constants.dart';
import 'package:notify/widgets/tween_notify_logo.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: AppThemeColors.backgroundColor,
        body: Center(
          child: NotifyIcon()
        ));
  }
}
