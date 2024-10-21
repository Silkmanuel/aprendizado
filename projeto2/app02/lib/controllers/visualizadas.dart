import 'package:app02/models/conversa.dart';
import 'package:app02/models/conversas.dart';
import 'package:flutter/material.dart';

class Visualizadas extends ChangeNotifier {
  List<Conversa> conversationList = ConversarRepositorio.tabela;
  int? _selectedIndex;
  int num = 0;
  int? get selectedIndex => _selectedIndex;

  void selecionarConversa(int index) {
    _selectedIndex = index;
    num++;
    notifyListeners();
  }

  void alterReadState(int index) {
    conversationList[index].lida = !conversationList[index].lida;
    notifyListeners();
  }
}
