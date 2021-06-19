import 'package:flutter/foundation.dart';

class SwitchController extends ChangeNotifier {
  static SwitchController instance = SwitchController();
  bool switchState = true;

  changeTheme() {
    switchState = !switchState;
    notifyListeners();
  }
}
