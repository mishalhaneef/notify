import 'package:flutter/material.dart';
import 'package:notify/core/app_logo/notify_icon.dart';
import 'package:notify/core/constants.dart';
import 'package:notify/core/routes.dart';
import 'package:notify/view/auth/registration/registration_screen.dart';
import 'package:notify/view/onboard/widgets/signbox.dart';
import 'package:notify/view/widgets/notify_head_text.dart';
import 'package:page_transition/page_transition.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final AnimationController _controller;
    final Animation<Offset> _animation;

    return Scaffold(
        backgroundColor: AppThemeColors.backgroundColor,
        body: SafeArea(
          child: Column(
            children: [
              const HeadNotifyText(head: 'WELCOME TO \nNOTIFY'),
              const SizedBox(height: 100),
              SignBox(
                  head: 'Register to Notify',
                  description:
                      'Register and choose your avatar and get notified whenever you need boss!!!',
                  icon: const NotifyIcon(),
                  onTap: () {
                    Navigator.of(context)
                        .push(createRoute(const RegistrationScreen()));
                  }),
              SignBox(
                head: 'Login to Notify',
                description:
                    'Login to your existing account, and get notified whenever you want',
                icon: const NotifyIcon(
                  color: AppThemeColors.secondaryColor,
                  backgroundColor: AppThemeColors.backgroundColorLite,
                ),
                onTap: () {},
              )
            ],
          ),
        ));
  }
}
