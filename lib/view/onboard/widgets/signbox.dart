import 'package:flutter/material.dart';
import 'package:notify/core/constants.dart';

class SignBox extends StatelessWidget {
  const SignBox({
    Key? key,
    required this.head,
    required this.description,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final String head;
  final String description;
  final Widget icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30, bottom: 20, top: 20),
      height: 150,
      decoration: boxDecoration,
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            icon,
            SizedBox(
              width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    head,
                    style: const TextStyle(
                      color: AppThemeColors.secondaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    description,
                    style: const TextStyle(
                      color: AppThemeColors.secondaryColor,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
