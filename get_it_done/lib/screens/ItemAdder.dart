import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:get_it_done/models/items_data.dart';

class ItemAdder extends StatelessWidget {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: TextField(
                minLines: 1,
                maxLines: 2,
                controller: textController,
                onChanged: (input) {},
                style: TextStyle(color: Colors.black, fontSize: 20),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Write',
                    labelText: 'Add Item'),
                autofocus: true,
              ),
            ),
            Container(
              height: 50,
              width: 80,
              child: FlatButton(
                  onPressed: () {
                    Provider.of<ItemData>(context, listen: false)
                        .addItem(textController.text);
                    Navigator.pop(context);
                  },
                  color: Theme.of(context).accentColor,
                  child: Text('Add')),
            )
          ],
        ),
      ),
    );
  }
}