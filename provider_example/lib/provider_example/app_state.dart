import 'dart:async';

import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  int temp = 20;

  int start = 0;
  void updateStart(int start) {
    this.start = start;
    notifyListeners();
  }

  void getTimer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      updateStart(timer.tick);
    });
  }
}
