import 'package:flutter/material.dart';

class InputProvider extends ChangeNotifier {
  String value;
  InputProvider({
    this.value = "wow",
  });
  void changeValue({
    required String newValue,
  }) async {
    value = newValue;
    notifyListeners();
  }
}
