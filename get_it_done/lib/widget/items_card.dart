import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String title;
  final bool isDone;
  final Function(bool) toggle;
  final Function(dynamic) deleteItem;

  ItemCard({
    this.title,
    this.isDone,
    this.toggle,
    this.deleteItem,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(onDismissed: deleteItem,
      key: UniqueKey(),
      child: Card(
        color: isDone ? Colors.green.shade50 : Colors.white,
        elevation: isDone ? 1 : 5,
        shadowColor: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(
                color: Colors.black,
                decoration: isDone ? TextDecoration.lineThrough : null),
          ),
          trailing: Checkbox(
            onChanged: toggle,
            value: isDone,
            activeColor: Colors.green,
          ),
        ),
      ),
    );
  }
}