import 'package:flutter/material.dart';
import 'package:notify/core/app_logo/notify_icon.dart';
import 'package:notify/core/constants.dart';
import 'package:notify/core/routes.dart';
import 'package:notify/view/auth/login/login_screen.dart';
import 'package:notify/view/auth/registration/registration_screen.dart';
import 'package:notify/view/onboard/widgets/signbox.dart';
import 'package:notify/view/widgets/notify_head_text.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppThemeColors.backgroundColor,
        body: SafeArea(
          child: Column(
            children: [
              const HeadNotifyText(head: 'WELCOME TO \nNOTIFY'),
              SizedBox(height: size.height / 2 - 350),
              SignBox(
                head: 'Register to Notify',
                description:
                    'Register and choose your avatar and get notified whenever you need boss!!!',
                icon: const NotifyIcon(),
                onTap: () {
                  Navigator.of(context)
                      .push(createRoute(const RegistrationScreen()));
                },
              ),
              SignBox(
                head: 'Login to Notify',
                description:
                    'Login to your existing account, and get notified whenever you want',
                icon: const NotifyIcon(
                  color: AppThemeColors.secondaryColor,
                  backgroundColor: AppThemeColors.backgroundColorLite,
                ),
                onTap: () {
                  Navigator.of(context)
                      .push(createRoute(const LoginScreen()));
                },
              )
            ],
          ),
        ));
  }
}
