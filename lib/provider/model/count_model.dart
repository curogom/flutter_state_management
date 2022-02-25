import 'package:flutter/material.dart';

class CountModel with ChangeNotifier {
  int counter = 0;

  void incrementCounter() {
    counter++;
    notifyListeners();
  }

  void decrementCount() {
    counter--;
    notifyListeners();
  }
}