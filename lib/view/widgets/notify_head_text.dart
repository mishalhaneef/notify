import 'package:flutter/material.dart';
import 'package:notify/core/app_logo/notify_icon.dart';
import 'package:notify/core/constants.dart';

class HeadNotifyText extends StatelessWidget {
  const HeadNotifyText({
    Key? key,
    required this.head,
    this.padding = const EdgeInsets.all(30.0),
    this.secondaryText = '',
  }) : super(key: key);

  final String head;
  final EdgeInsetsGeometry padding;
  final String secondaryText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        children: [
          const NotifyIcon(),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                head,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              if (secondaryText != '')
                Text(
                  secondaryText,
                  style: const TextStyle(
                    fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppThemeColors.secondaryColor),
                )
            ],
          ),
        ],
      ),
    );
  }
}
