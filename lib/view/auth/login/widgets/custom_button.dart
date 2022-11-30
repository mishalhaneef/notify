import 'package:flutter/material.dart';
import 'package:notify/core/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Ink(
        height: 50,
        width: 260,
        decoration: BoxDecoration(
          color: AppThemeColors.secondaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: InkWell(
          splashColor: const Color.fromARGB(255, 131, 156, 248),
          borderRadius: BorderRadius.circular(15),
          onTap: () {},
          child: const Center(
              child: Text(
            'Sign Up',
            style: TextStyle(
              fontSize: 18,
              color: AppThemeColors.backgroundColor,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
      ),
    );
  }
}
