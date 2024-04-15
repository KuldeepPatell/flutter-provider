import 'package:flutter/material.dart';

class ItemProvider with ChangeNotifier {
  List favList = [];
  addToList(index) {
    favList.add(index);
    notifyListeners();
  }

  removeFav(index) {
    favList.remove(index);
    notifyListeners();
  }
}
