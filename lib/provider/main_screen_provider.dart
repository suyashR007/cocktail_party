import 'package:flutter/material.dart';

class MainScreenProvider with ChangeNotifier {
  int _index = 0;
  int get index => _index;

  changeIndex(int value) {
    _index = value;
    notifyListeners();
  }
}
