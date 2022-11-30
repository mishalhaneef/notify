import 'package:flutter/material.dart';
import 'package:notify/core/constants.dart';

class ChooseAvatar extends StatelessWidget {
  const ChooseAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Choose your Avatar',
          style: TextStyle(color: AppThemeColors.hintColor),
        ),
        const SizedBox(height: 30),
        SizedBox(
          height: 80,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            shrinkWrap: true,
            itemCount: 6,
            itemBuilder: (context, index) {
              return Image.asset(userIcon);
            },
          ),
        ),
      ],
    );
  }
}
