import 'package:flutter/material.dart';
import 'package:notify/core/constants.dart';

class DirectToDeferentSignMethod extends StatelessWidget {
  const DirectToDeferentSignMethod({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          'already have account? ',
          style: TextStyle(color: AppThemeColors.hintColor),
        ),
        Text(
          'Login',
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
