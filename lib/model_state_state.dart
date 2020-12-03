abstract class ModelStateState {
  final List<String> itemsSelected;
  ModelStateState(this.itemsSelected);
}

class ItemsLoaded extends ModelStateState {
  ItemsLoaded(List<String> itemsSelected) : super(itemsSelected);
}
