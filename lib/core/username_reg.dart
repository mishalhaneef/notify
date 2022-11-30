import 'package:flutter/material.dart';

class UserNameReg extends StatelessWidget {
  const UserNameReg({
    Key? key,
    required this.textStyle,
    this.head = true,
    required this.userName,
  }) : super(key: key);

  final TextStyle textStyle;
  final bool head;
  final String? userName;
  @override
  Widget build(BuildContext context) {
    final firstLetter = userName![0];
    final restLetters = userName!.substring(1).toLowerCase().trimRight();

    return Row(
      children: [
        Text(
          firstLetter.toUpperCase(),
          style: textStyle,
        ),
        Text(
          head == true
              ? restLetters.contains(' ') == true
                  ? restLetters.substring(0, restLetters.indexOf(' '))
                  : restLetters
              : restLetters,
          style: textStyle,
        ),
      ],
    );
  }
}
