import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notify/core/constants.dart';
import 'package:notify/view_model/auth/password_notifier.dart';
import 'package:provider/provider.dart';

class NotifyTextField extends StatelessWidget {
  const NotifyTextField(
      {Key? key,
      required this.icon,
      required this.hint,
      this.isPassword = false,
      this.controller,
      this.onChanged})
      : super(key: key);

  final IconData icon;
  final String hint;
  final bool isPassword;
  final TextEditingController? controller;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30, bottom: 10, top: 10),
      height: 65,
      decoration: boxDecoration,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: CircleAvatar(
              radius: 15,
              backgroundColor: AppThemeColors.backgroundColorLite,
              child: Icon(
                icon,
                size: 20,
                color: AppThemeColors.secondaryColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Consumer<PasswordNotifier>(
              builder: (context, value, child) => TextField(
                controller: controller,
                onChanged: onChanged,
                obscureText: isPassword ?  value.obscureText == false ? true : false : false,
                decoration: InputDecoration(
                  hintText: hint,
                  hintStyle: const TextStyle(
                      color: AppThemeColors.hintColor, fontSize: 15),
                  border: InputBorder.none,
                ),
                cursorColor: AppThemeColors.secondaryColor,
              ),
            ),
          ),
          if (isPassword == true)
            Consumer<PasswordNotifier>(
              builder: (context, value, child) => Positioned(
                right: 1,
                child: Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: IconButton(
                      onPressed: () {
                        value.obscureText == false
                            ? value.showPassword()
                            : value.hidePassword();
                      },
                      icon: Icon(
                        value.obscureText == true
                            ? CupertinoIcons.eye_slash_fill
                            : CupertinoIcons.eye_fill,
                        size: 20,
                        color: AppThemeColors.hintColor,
                      ),
                    )),
              ),
            ),
        ],
      ),
    );
  }
}
