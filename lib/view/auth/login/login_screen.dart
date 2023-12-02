import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notify/core/constants.dart';
import 'package:notify/view/auth/registration/widgets/custom_button.dart';
import 'package:notify/view/auth/registration/widgets/direct_to_dfrnt_sign_method.dart';
import 'package:notify/view/onboard/widgets/text_field.dart';
import 'package:notify/view/widgets/notify_head_text.dart';
import 'package:notify/view_model/auth/realtime_text_update.dart';
import 'package:provider/provider.dart';

TextEditingController usernameController = TextEditingController();

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider =
        Provider.of<RealTimeTextUpdateProvider>(context, listen: false);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppThemeColors.backgroundColor,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  // IconButton(
                  //   onPressed: () => Navigator.pop(context),
                  //   icon: const Icon(
                  //     CupertinoIcons.back,
                  //     color: AppThemeColors.secondaryColor,
                  //   ),
                  // ),
                  Consumer<RealTimeTextUpdateProvider>(
                    builder: (context, value, child) => HeadNotifyText(
                      head: 'Welcome \nBack :)',
                      secondaryText: value.text,
                      padding: const EdgeInsets.only(
                          left: 10, right: 30, bottom: 30, top: 30),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  NotifyTextField(
                    icon: Icons.person,
                    hint: 'Name',
                    controller: usernameController,
                    onChanged: (value) {
                      provider.changeText(value);
                    },
                  ),
                  const NotifyTextField(
                    icon: Icons.email,
                    hint: 'email',
                  ),
                  const NotifyTextField(
                    icon: Icons.password_rounded,
                    hint: 'password',
                    isPassword: true,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Column(
                children: [
                  CustomButton(),
                  SizedBox(height: 10),
                  DirectToDeferentSignMethod(isLogin: true)
                ],
              ),
              const SizedBox(),
            ],
          ),
        ));
  }
}
