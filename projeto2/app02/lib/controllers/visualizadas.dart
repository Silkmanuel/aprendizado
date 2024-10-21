import 'package:flutter/material.dart';

class Visualizadas extends ChangeNotifier {
  int? _selectedIndex;
  int num = 0;
  int? get selectedIndex => _selectedIndex;

  void selecionarConversa(int index) {
    _selectedIndex = index;
    num++;
    notifyListeners();
  }
}
