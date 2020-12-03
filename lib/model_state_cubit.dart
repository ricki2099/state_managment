import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'model_state_state.dart';

class ModelStateCubit extends Cubit<ModelStateState> {
  ModelStateCubit() : super(ItemsLoaded([]));

  final itemsProvider = [
    'Juan Manuel',
    'Natalia',
    'Sleyner',
    'Juan Sebastian',
    'Sebastian',
    'Manuel'
  ];

  void addSelected(String selected) {
    final itemsSelected = [...state.itemsSelected];
    if (!itemsSelected.remove(selected)) {
      itemsSelected.add(selected);
    }
    emit(ItemsLoaded(itemsSelected));
  }
}
