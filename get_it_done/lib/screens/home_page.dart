import 'package:flutter/material.dart';
import 'package:get_it_done/widget/items_card.dart';
import 'package:get_it_done/widget/items_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: Center(child: Text('Get It Done')),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  '5 Items',
                  style: Theme
                      .of(context)
                      .textTheme
                      .headline3,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: ListView.builder(itemBuilder: (context, index) {
                  return ItemCard();
                }, itemCount: 10,),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}
