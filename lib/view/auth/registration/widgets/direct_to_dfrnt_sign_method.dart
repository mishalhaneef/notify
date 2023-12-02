import 'package:flutter/material.dart';
import 'package:notify/core/constants.dart';
import 'package:notify/core/routes.dart';
import 'package:notify/view/auth/login/login_screen.dart';
import 'package:notify/view/auth/registration/registration_screen.dart';

class DirectToDeferentSignMethod extends StatelessWidget {
  const DirectToDeferentSignMethod({
    Key? key,
    this.isLogin = false,
  }) : super(key: key);

  final bool isLogin;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          isLogin ? 'New Here? ' : 'already have account? ',
          style: const TextStyle(color: AppThemeColors.hintColor),
        ),
        GestureDetector(
          onTap: () => isLogin
              ? Navigator.of(context)
                  .push(createRoute(const RegistrationScreen()))
              : Navigator.of(context).push(createRoute(const LoginScreen())),
          child: Text(
            isLogin ? 'Register' : 'Login',
            style: const TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
