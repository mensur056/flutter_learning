class Item {
  final String title;
  bool isDone;

  Item({ required this.title, this.isDone = false});

  void trueFalse() {
    isDone=!isDone;
  }
}