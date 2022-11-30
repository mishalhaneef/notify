import 'package:flutter/cupertino.dart';

class PasswordNotifier extends ChangeNotifier {
  bool obscureText = false;

  showPassword() {
    obscureText = true;
    notifyListeners();
  }

  hidePassword() {
    obscureText = false;
    notifyListeners();
  }
}
