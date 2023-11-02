import 'package:flutter/material.dart';

import 'item.dart';

class Catalog with ChangeNotifier {
  final List<Item> _list = [
    Item("Water", false),
    Item("Fruits", false),
    Item("Chips", false),
    Item("Chocolat", false),
    Item("Juice", false),
    Item("Soda", false),
    Item("Fish", false),
    Item("Beef", false),
    Item("Bread", false),
  ];

  List<Item> get list => _list;

  void selectItem(int index) {
    _list[index].value = !_list[index].value;
    notifyListeners();
  }
}
