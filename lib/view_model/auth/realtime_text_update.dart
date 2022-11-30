import 'package:flutter/cupertino.dart';

class RealTimeTextUpdateProvider extends ChangeNotifier {
  String text = '';

  changeText(String value) {
    if (value != '') {
      final firstLetter = value[0];
      final restLetters = value.substring(1).toLowerCase().trimRight();
      final name = '${firstLetter.toUpperCase()}$restLetters';
      text = name;
    } else {
      text = '';
    }
    notifyListeners();
  }
}
