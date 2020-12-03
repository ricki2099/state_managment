import 'package:flutter/cupertino.dart';

class ModelState extends ChangeNotifier {
  final items = [
    'Juan Manuel',
    'Natalia',
    'Sleyner',
    'Juan Sebastian',
    'Sebastian',
    'Manuel'
  ];

  final itemsSelected = <String>[];

  void addSelected(String selected) {
    if (!itemsSelected.remove(selected)) {
      itemsSelected.add(selected);
    }
    notifyListeners();
  }
}
