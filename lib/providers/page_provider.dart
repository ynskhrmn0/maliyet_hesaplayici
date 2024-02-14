import 'package:flutter/material.dart';

class PageProvider extends ChangeNotifier {
  int page;

  PageProvider({
    this.page = 0,
  });
  void changePage({
    required int newPage,
  }) async {
    page = newPage;
    notifyListeners();
  }
}
